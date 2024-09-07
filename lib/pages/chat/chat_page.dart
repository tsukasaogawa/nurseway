import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shared_preferences/shared_preferences.dart'; // SharedPreferencesをインポート

class ChatPage extends StatefulWidget {
  final String selectedModel;

  ChatPage({required this.selectedModel});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  List<Map<String, dynamic>> _messages = [];
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late String userId;

  bool _isSendingMessage = false;
  bool _isLoading = false;
  bool _isAnimating = false;

  InterstitialAd? _interstitialAd;
  int _chatCount = 0; // チャットの回数をカウントする変数

  @override
  void initState() {
    super.initState();
    _loadUser();
    _loadInterstitialAd(); // インタースティシャル広告をロード
  }

  Future<void> _loadUser() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      userId = user.uid;
      print('User ID: $userId');
      await _loadChatCount(); // チャットカウントをロード
      _loadChatHistory();
    } else {
      print('No user logged in');
    }
  }

  // SharedPreferencesからチャットカウントをロード
  Future<void> _loadChatCount() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _chatCount = prefs.getInt('chat_count_$userId') ?? 0;
    });
    print('Loaded chat count: $_chatCount');
  }

  // SharedPreferencesにチャットカウントを保存
  Future<void> _saveChatCount() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('chat_count_$userId', _chatCount);
    print('Saved chat count: $_chatCount');
  }

  void _loadChatHistory() async {
    try {
      final chatHistory = await _firestore.collection('chats').doc(userId).get();
      if (chatHistory.exists) {
        setState(() {
          _messages = List<Map<String, dynamic>>.from(chatHistory['messages']);
          print('Loaded chat history: $_messages');
        });
        _scrollToBottom();
      } else {
        print('No chat history found for user: $userId');
      }
    } catch (e) {
      print('Error loading chat history: $e');
    }
  }

  void _saveMessage(String role, String message) async {
    await _firestore.collection('chats').doc(userId).set({
      'messages': _messages,
    });
  }

  List<String> splitText(String text, int maxLength) {
    List<String> chunks = [];
    for (int i = 0; i < text.length; i += maxLength) {
      int end = (i + maxLength < text.length) ? i + maxLength : text.length;
      chunks.add(text.substring(i, end));
    }
    return chunks;
  }

  void _sendMessage(String text) async {
    if (_isSendingMessage) return;

    setState(() {
      _isSendingMessage = true;
      _isLoading = true;
    });

    setState(() {
      if (_messages.length >= 5) {
        _messages.removeRange(0, _messages.length - 4);
      }
      _messages.add({"role": "user", "content": text});
    });

    _controller.clear();

    _saveMessage("user", text);
    _scrollToBottom();

    // テキストを分割して送信
    List<String> chunks = splitText(text, 1000); // 1000は分割するテキストの長さの例
    String combinedResponse = '';

    for (String chunk in chunks) {
      final response = await _getChatGptResponse(chunk);
      if (response.isNotEmpty) {
        combinedResponse += response + ' ';
      }
    }

    if (combinedResponse.isNotEmpty) {
      setState(() {
        _isAnimating = true;
        _messages.add({
          "role": "assistant",
          "content": combinedResponse.trim(),
        });
      });

      _saveMessage("assistant", combinedResponse.trim());
      _scrollToBottom();
    }

    // チャット回数をカウント
    _chatCount++;
    await _saveChatCount(); // チャットカウントを保存
    if (_chatCount >= 2) {
      _showInterstitialAd(); // 2回ごとに広告を表示
      _chatCount = 0; // カウントをリセット
      await _saveChatCount(); // リセット後のカウントを保存
    }

    setState(() {
      _isSendingMessage = false;
      _isLoading = false;
    });
  }

  Future<String> _getChatGptResponse(String message) async {
    final openAiApiKey = dotenv.env['OPENAI_API_KEY'];
    const openAiApiUrl = 'https://api.openai.com/v1/chat/completions';

    // 最新の6通のメッセージのみを送信
    final List<Map<String, dynamic>> recentMessages = _messages.length <= 5
        ? List.from(_messages)
        : _messages.sublist(_messages.length - 5);

    recentMessages.add({"role": "user", "content": message});

    // メッセージリストからnull値を除去
    final List<Map<String, dynamic>> filteredMessages = recentMessages
        .where((msg) => msg["content"] != null && msg["content"].isNotEmpty)
        .toList();

    try {
      final response = await http.post(
        Uri.parse(openAiApiUrl),
        headers: {
          'Authorization': 'Bearer $openAiApiKey',
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'model': widget.selectedModel,
          'messages': filteredMessages,
          'max_tokens': 4096,
        }),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(utf8.decode(response.bodyBytes));
        if (responseData.containsKey('choices') && responseData['choices'].isNotEmpty) {
          return responseData['choices'][0]['message']['content'].trim();
        } else {
          return 'No response from OpenAI';
        }
      } else {
        throw Exception('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Error with OpenAI API: $e');
      return 'Error processing the message';
    }
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      }
    });
  }

  // インタースティシャル広告をロードするメソッド
  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: 'ca-app-pub-3940256099942544/4411468910', // 広告ユニットIDを指定
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          _interstitialAd = ad;
        },
        onAdFailedToLoad: (LoadAdError error) {
          print('InterstitialAd failed to load: $error');
          _interstitialAd = null;
        },
      ),
    );
  }

  // インタースティシャル広告を表示するメソッド
  void _showInterstitialAd() {
    if (_interstitialAd != null) {
      _interstitialAd!.show();
      _interstitialAd = null; // 広告を表示したら再度ロードする
      _loadInterstitialAd(); // 次回のために広告をロード
    } else {
      print('Interstitial ad is not ready yet.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey, width: 0.5),
            ),
          ),
          child: AppBar(
            title: const Text('AIチャット'),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                final role = message["role"] ?? "unknown";
                final content = message["content"] ?? "";

                if (role == "assistant" && index == _messages.length - 1 && _isAnimating) {
                  return ListTile(
                    title: Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onLongPress: () {
                          Clipboard.setData(ClipboardData(text: content));
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('メッセージをコピーしました')),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFFDDDDDD), Color(0xFFDDDDDD)],
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: DefaultTextStyle(
                            style: const TextStyle(color: Colors.black),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(content),
                              ],
                              isRepeatingAnimation: false,
                              onFinished: () {
                                setState(() {
                                  _isAnimating = false;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                } else {
                  return ListTile(
                    title: Align(
                      alignment: role == "assistant" ? Alignment.topLeft : Alignment.topRight,
                      child: GestureDetector(
                        onLongPress: () {
                          Clipboard.setData(ClipboardData(text: content));
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('メッセージをコピーしました')),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            gradient: role == "assistant"
                                ? const LinearGradient(
                                    colors: [Color(0xFFDDDDDD), Color(0xFFDDDDDD)],
                                  )
                                : const LinearGradient(
                                    colors: [Color(0xFF4FC3F7), Color(0xFF4FC3F7)],
                                  ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            content,
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
          if (_isLoading)
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
            ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(color: Colors.grey, width: 0.5),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Row(
              children: [
                const SizedBox(width: 8.0),
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'Aa',
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                        border: InputBorder.none,
                      ),
                      onSubmitted: _sendMessage,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () => _sendMessage(_controller.text),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}

