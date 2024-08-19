import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'kokushi/AICategorySelectionPage.dart';
import 'nurse_work_style_page.dart';
import 'nursing_practice_preparation_page.dart';
import 'AIConsultationExample/ai_consultation_example_page.dart'; // 新しいページをインポート

class StudentPage extends StatelessWidget {
  const StudentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '看護学生',
          style: GoogleFonts.notoSerif(color: Colors.black),
        ),
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
              _buildGradientButtonWithSubtitle(
                context,
                title: '看護師国家試験対策',
                icon: Icons.school,
                page: AICategorySelectionPage(
                  onUpdateProgress: (double progress) {}, // 必須のパラメータとして渡す
                ),
                subtitles: ['必修問題'],
              ),
              const SizedBox(height: 20),
              _buildGradientButton(
                context,
                title: '看護実習対策',
                icon: Icons.health_and_safety,
                page: const NursingPracticePreparationPage(),
              ),
              const SizedBox(height: 20),
              _buildGradientButton(
                context,
                title: '看護師の働き方',
                icon: Icons.work_outline,
                page: const NurseWorkStylePage(),
              ),
              const SizedBox(height: 20),
              _buildGradientButton(
                context,
                title: 'AI相談活用例',
                icon: Icons.chat_bubble_outline,
                page: const AIConsultationExamplePage(), // 新しいページを設定
              ),
              const SizedBox(height: 20), // 余白を追加
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGradientButton(BuildContext context, {required String title, required IconData icon, required Widget page}) {
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
        onPressed: () {
          Navigator.of(context, rootNavigator: true).push(
            MaterialPageRoute(builder: (context) => page),
          );
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black, // テキスト色
          minimumSize: const Size(double.infinity, 150), // ボタンの最小サイズを倍に
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // ボタンの形状
          ),
          textStyle: GoogleFonts.notoSerif(fontSize: 18), // フォントを明朝体に設定
          backgroundColor: Colors.transparent, // 背景を透明に設定
          shadowColor: Colors.transparent, // 影の色を透明に設定
        ),
        child: Center(
          child: Row(
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
        ),
      ),
    );
  }

  Widget _buildGradientButtonWithSubtitle(BuildContext context,
      {required String title, required IconData icon, required Widget page, required List<String> subtitles}) {
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
        onPressed: () {
          Navigator.of(context, rootNavigator: true).push(
            MaterialPageRoute(builder: (context) => page),
          );
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black, // テキスト色
          minimumSize: const Size(double.infinity, 150), // ボタンの高さを少し増やす
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
