import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // GoogleFontsの使用
import 'package:url_launcher/url_launcher.dart';
import 'Hissyuu AI/hissyuu_list_page.dart';
import 'HissyuuReviewListQuizPage.dart';
import 'Ippan AI/AIIppanTopicsPage.dart';

class AICategorySelectionPage extends StatelessWidget {
  final void Function(double progress) onUpdateProgress;

  const AICategorySelectionPage({super.key, required this.onUpdateProgress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('看護師国家試験対策'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    _buildCategoryButtonWithSubtitle(
                      context,
                      title: 'AI必修問題',
                      subtitle: 'オリジナル問題', // サブタイトル
                      page: HissyuuListPage(onUpdateProgress: onUpdateProgress),
                      height: 110,
                    ),
                    const SizedBox(height: 20),
                    _buildCategoryButtonWithSubtitle(
                      context,
                      title: 'AI一般問題', // 「AI一般問題」ボタンにも同じサブタイトルを追加
                      subtitle: 'オリジナル問題', // サブタイトル
                      page: AIIppanTopicsPage(),
                      height: 110,
                    ),
                    const SizedBox(height: 20),
                    _buildCategoryButton(
                      context,
                      title: '復習問題リスト',
                      page: const HissyuuReviewListQuizPage(), // Navigate to HissyuuReviewListQuizPage
                      height: 55,
                    ),
                  ],
                ),
              ),
            ),
          ),
          _buildCitation(context), // Citation section at the bottom
        ],
      ),
    );
  }

  Widget _buildCategoryButtonWithSubtitle(BuildContext context, {required String title, required String subtitle, required Widget page, required double height}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      height: height,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)],
          stops: [0.0, 0.66, 1.0],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          minimumSize: const Size(double.infinity, 60),
          padding: const EdgeInsets.symmetric(vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          textStyle: const TextStyle(fontSize: 18),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, color: Colors.black),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
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
                      fontSize: 10, // サブタイトルのフォントサイズ
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(BuildContext context, {required String title, required Widget page, required double height}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      height: height,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)],
          stops: [0.0, 0.66, 1.0],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          minimumSize: const Size(double.infinity, 60),
          padding: const EdgeInsets.symmetric(vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          textStyle: const TextStyle(fontSize: 18),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          title,
          style: const TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }

  Widget _buildCitation(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text.rich(
        TextSpan(
          text: '出典：',
          style: const TextStyle(fontSize: 14, color: Colors.black),
          children: [
            TextSpan(
              text: '厚生労働省ホームページ',
              style: const TextStyle(fontSize: 14, color: Colors.blue, decoration: TextDecoration.underline),
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  const url = 'https://www.mhlw.go.jp/content/10803000/000919502.pdf';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
            ),
            const TextSpan(
              text: '\n(2024年8月19日に利用)',
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
