import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Hissyuu/hissyuu_list_page.dart';
import 'Ippan/ippan_list_page.dart';


class KokkashikenkakoMondaiPage extends StatefulWidget {
  const KokkashikenkakoMondaiPage({super.key});

  @override
  _KokkashikenkakoMondaiPageState createState() => _KokkashikenkakoMondaiPageState();
}

class _KokkashikenkakoMondaiPageState extends State<KokkashikenkakoMondaiPage> {
  double hissyuuProgress = 0.0;
  double ippanProgress = 0.0;

  void _updateHissyuuProgress(double progress) {
    setState(() {
      hissyuuProgress = progress;
    });
  }

  void _updateIppanProgress(double progress) {
    setState(() {
      ippanProgress = progress;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('看護師国家試験対策'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)], // 薄水色のグラデーションカラー
              stops: [0.0, 0.5, 1.0],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 10), // 最上部の間隔
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8), // 高さを半分に調整
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: '検索...',
                    prefixIcon: const Icon(Icons.search),
                    hintStyle: const TextStyle(color: Colors.black), // Hint text color
                  ),
                ),
              ),
              const SizedBox(height: 20), // 検索バーとボタンの間隔
              ProgressButton(
                title: '必修問題',
                totalQuestions: 500,
                progress: hissyuuProgress,
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(builder: (context) => HissyuuListPage(onUpdateProgress: _updateHissyuuProgress)),
                  );
                },
              ),
              const SizedBox(height: 20),
              ProgressButton(
                title: '一般・状況設定問題',
                totalQuestions: 1900,
                progress: ippanProgress,
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(builder: (context) => IppanListPage(onUpdateProgress: _updateIppanProgress)),
                  );
                },
              ),
              const SizedBox(height: 20),
              buildElevatedButton(context, '間違えた問題', () {
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(builder: (context) => const IncorrectQuestionsPage()),
                );
              }),
              const SizedBox(height: 20),
              buildElevatedButton(context, '復習リスト', () {
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(builder: (context) => const ReviewListPage()),
                );
              }),
              const SizedBox(height: 20), // 最下部の間隔
            ],
          ),
        ),
      ),
    );
  }

  Widget buildElevatedButton(BuildContext context, String title, VoidCallback onPressed) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)], // グラデーションカラー
          stops: [0.0, 0.5, 1.0],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black, // テキスト色
          minimumSize: const Size(double.infinity, 120), // ボタンの最小サイズを倍に
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // ボタンの形状
          ),
          textStyle: GoogleFonts.notoSerif(fontSize: 18), // フォントを明朝体に設定
          backgroundColor: Colors.transparent, // 背景を透明に設定
          shadowColor: Colors.transparent, // 影の色を透明に設定
        ),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}

class ProgressButton extends StatelessWidget {
  final String title;
  final int totalQuestions;
  final double progress;
  final VoidCallback onPressed;

  const ProgressButton({
    required this.title,
    required this.totalQuestions,
    required this.progress,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)], // グラデーションカラー
          stops: [0.0, 0.5, 1.0],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black, // テキスト色
          minimumSize: const Size(double.infinity, 120), // ボタンの最小サイズを倍に
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // ボタンの形状
          ),
          textStyle: GoogleFonts.notoSerif(fontSize: 18), // フォントを明朝体に設定
          backgroundColor: Colors.transparent, // 背景を透明に設定
          shadowColor: Colors.transparent, // 影の色を透明に設定
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.grey[200],
                color: Colors.blue,
                minHeight: 5,
              ),
            ),
            Text(
              '達成率: ${(progress * 100).toStringAsFixed(1)}%',
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

class IncorrectQuestionsPage extends StatelessWidget {
  const IncorrectQuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('間違えた問題'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)], // 薄水色のグラデーションカラー
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10), // 最上部の間隔
              Text(
                '間違えた問題のリスト',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(height: 20), // テキストと最下部の間隔
            ],
          ),
        ),
      ),
    );
  }
}

class ReviewListPage extends StatelessWidget {
  const ReviewListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('復習リスト'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)], // 薄水色のグラデーションカラー
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10), // 最上部の間隔
              Text(
                '復習リスト',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(height: 20), // テキストと最下部の間隔
            ],
          ),
        ),
      ),
    );
  }
}
