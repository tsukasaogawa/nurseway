import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'JobSupport/job_support_page.dart';
import 'NursePage/nurse_page.dart';
import 'student/student_page.dart';
import 'chat/chat_page.dart'; // ChatPageをインポート
import 'setting/settings_page.dart'; // SettingsPageをインポート

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final TextEditingController _textEditingController = TextEditingController(); // Controller for input text
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late String userId;

  late final ScrollController _scrollController;
  late final AnimationController _animationController;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _loadUser();
    _scrollController = ScrollController();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat(reverse: false);

    _animation = Tween<double>(begin: 1.0, end: -1.0).animate(_animationController);

    _animationController.addListener(() {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent * _animation.value);
      }
    });

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.repeat();
        _scrollController.jumpTo(_scrollController.position.minScrollExtent);
      }
    });

    _animationController.forward();
  }

  @override
  void dispose() {
    _textEditingController.dispose(); // Dispose the controller when not needed
    _animationController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _loadUser() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      userId = user.uid;
      print('User ID: $userId');
    } else {
      // ユーザーがログインしていない場合、ログインページにリダイレクトするなどの処理を行います。
      print('No user logged in');
    }
  }

  void _showAnnouncements() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => AnnouncementListPage()),
    );
  }

  void _navigateToChatPage(BuildContext context) async {
    // プランに関係なく直接チャットページに移動
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatPage(selectedModel: 'gpt-3.5-turbo'),
      ),
    );
  }

  void _navigateToSettingsPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SettingsPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFFFFFF), // White
                  Color(0xFFFFFFFF), // White
                  Color(0xFFE1F5FE), // Very light blue
                  Color(0xFFB3E5FC), // Light blue
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.2, 0.5, 1.0],
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 55), // Add some space at the top
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        '     NurseWay',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10), // Add some space between text and image
                      SizedBox(
                        height: 35, // Match the height of the text
                        child: Image.asset(
                          'assets/images/nursecat.jpg', // 変更した画像パス
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                _buildScrollingAnnouncementWidget(), // 流れるお知らせウィジェット
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _buildGradientButton(
                          context,
                          title: '看護学生',
                          subtitles: ['国家試験対策', '実習対策', '看護師の働き方'],
                          icon: Icons.menu_book,
                          page: const StudentPage(),
                          colors: const [
                            Color(0xFF81D4FA),
                            Color(0xFF64B5F6),
                            Color(0xFF0288D1)
                          ],
                        ),
                        _buildGradientButton(
                          context,
                          title: '看護師',
                          subtitles: ['美容医療学', 'AI相談活用例'],
                          icon: Icons.local_hospital,
                          page: const NursePage(),
                          colors: const [
                            Color(0xFFFFCC80),
                            Color(0xFFFFA726),
                            Color(0xFFF57C00)
                          ],
                        ),
                        _buildGradientButton(
                          context,
                          title: '転職支援',
                          subtitles: ['おすすめ転職サイト', '転職のコツ'],
                          icon: Icons.person_outline,
                          page: const JobSupportPage(),
                          colors: const [
                            Color(0xFFFFEBEE),
                            Color(0xFFE57399),
                            Color(0xFFD81B60)
                          ],
                        ),
                        _buildGradientButton(
                          context,
                          title: 'AI相談機能(ChatGPT搭載)',
                          subtitles: ['チャット形式', '学習支援', '志望動機・自己PR作成', '文章添削'],
                          icon: Icons.chat,
                          onTap: () => _navigateToChatPage(context),
                          colors: const [
                            Color(0xFF81C784),
                            Color(0xFF66BB6A),
                            Color(0xFF388E3C)
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () => _navigateToSettingsPage(context),
              iconSize: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGradientButton(BuildContext context,
      {required String title,
      required List<String> subtitles,
      required IconData icon,
      Widget? page,
      VoidCallback? onTap,
      required List<Color> colors}) {
    return GestureDetector(
      onTap: () {
        if (page != null) {
          Navigator.of(context, rootNavigator: true).push(
            MaterialPageRoute(builder: (context) => page),
          );
        } else if (onTap != null) {
          onTap();
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        height: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.lightBlue, width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8.0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.lightBlue, size: 40),
              const SizedBox(height: 8),
              Text(
                title,
                style: GoogleFonts.notoSerif(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 8),
              if (subtitles.isNotEmpty)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: subtitles
                      .map((subtitle) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4.0),
                            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Text(
                              subtitle,
                              style: GoogleFonts.notoSerif(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ))
                      .toList(),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildScrollingAnnouncementWidget() {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('announcements').orderBy('timestamp', descending: true).limit(1).snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        final latestAnnouncement = snapshot.data!.docs.isNotEmpty ? snapshot.data!.docs.first['content'] as String : '';

        return Container(
          height: 40,
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: [
              const SizedBox(width: 8.0),
              const Icon(Icons.info_outline, color: Color(0xFF0288D1)), // インフォメーションアイコンを保持
              const SizedBox(width: 8.0),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: _scrollController,
                  child: AnimatedBuilder(
                    animation: _animationController,
                    builder: (context, child) {
                      return Transform.translate(
                        offset: Offset(
                          _animation.value * MediaQuery.of(context).size.width,
                          0.0,
                        ),
                        child: Container(
                          child: Text(
                            latestAnnouncement,
                            style: const TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
            ],
          ),
        );
      },
    );
  }
}

class AnnouncementListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お知らせ'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('announcements').orderBy('timestamp', descending: true).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final announcements = snapshot.data!.docs.map((doc) => doc['content'] as String).toList();
          return ListView.builder(
            itemCount: announcements.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(announcements[index]),
              );
            },
          );
        },
      ),
    );
  }
}
