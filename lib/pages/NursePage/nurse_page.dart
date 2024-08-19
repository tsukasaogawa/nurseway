import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Aestheticmedicine/beauty_nursing_page.dart';
import 'AIUsage_guide_page.dart';

class NursePage extends StatelessWidget {
  const NursePage({Key? key}) : super(key: key);

  void _navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0), // AppBar height
        child: AppBar(
          title: Text('看護師ページ', style: GoogleFonts.notoSerif(color: Colors.black)),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFFE4E1), Color(0xFFFFC0CB), Color(0xFFFFB6C1)], // 桜色のグラデーション（左から右にかけて少し濃くなる）
                stops: [0.0, 0.5, 1.0],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          backgroundColor: Colors.transparent, // To make AppBar background transparent
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 10), // Top margin
              _buildGradientButtonWithSubtitle(
                context,
                title: '美容医療学',
                icon: Icons.auto_awesome,
                page: const BeautyNursingPage(),
                subtitles: ['オリジナル問題', '美容学習'],
              ),
              const SizedBox(height: 20),
              _buildGradientButtonWithSubtitle(
                context,
                title: 'AI相談活用例',
                icon: Icons.chat,
                page: AIUsageGuideNursePage(),
                subtitles: ['チャット形式', '学習支援', '志望動機・自己PR作成', '文章添削'],
              ),
              const SizedBox(height: 20), // Bottom margin
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGradientButtonWithSubtitle(BuildContext context,
      {required String title, required IconData icon, required Widget page, required List<String> subtitles}) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFFE4E1), Color(0xFFFFC0CB), Color(0xFFFFB6C1)], // 桜色のグラデーション（左から右にかけて少し濃くなる）
          stops: [0.0, 0.5, 1.0],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context, rootNavigator: true).push(
            MaterialPageRoute(builder: (context) => page),
          );
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black, // テキスト色
          minimumSize: const Size(double.infinity, 150), // ボタンの高さを120に設定
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // ボタンの形状
          ),
          textStyle: GoogleFonts.notoSerif(fontSize: 18), // フォントを明朝体に設定
          backgroundColor: Colors.transparent, // 背景を透明に設定
          shadowColor: Colors.transparent, // 影の色を透明に設定
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, color: Colors.black, size: 32), // アイコンのサイズ
                  const SizedBox(width: 10),
                  Text(
                    title,
                    style: GoogleFonts.notoSerif(
                      color: Colors.black, // テキスト色を黒に設定
                      fontSize: 20, // フォントサイズ
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: subtitles.map((subtitle) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    subtitle,
                    style: GoogleFonts.notoSerif(
                      color: Colors.black, // サブタイトルの色を黒に設定
                      fontSize: 10, // サブタイトルのフォントサイズを半分に設定
                    ),
                  ),
                )).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
