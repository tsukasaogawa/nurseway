import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AIUsageExamplesPage extends StatelessWidget {
  const AIUsageExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AI相談機能活用方法',
          style: GoogleFonts.notoSerif(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)],
              stops: [0.0, 0.5, 1.0],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'AI相談機能活用例',
                style: GoogleFonts.notoSerif(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              _buildGuideSection(
                '志望動機の作成',
                '例としてABC病院の特徴を踏まえ、志望動機を書いて',
                'assets/images/job1.png',
              ),
              const SizedBox(height: 16),
              _buildGuideSection(
                '面接の準備',
                '面接の際に注意すべき点や準備について教えて',
                'assets/images/job2.png',
              ),
              const SizedBox(height: 16),
              _buildGuideSection(
                '自己PRの作成',
                '急性期病棟で3年間勤務し、教育担当の経験もある。それらの点を踏まえて、自己PRを作成して',
                'assets/images/job3.png',
              ),
              const SizedBox(height: 16),
              _buildGuideSection(
                '転職先の選び方',
                '転職先を選ぶ際の基準やポイントについて教えて',
                'assets/images/job4.png',
              ),
              const SizedBox(height: 16),
              _buildGuideSection(
                'キャリアプランの作成',
                'キャリアプランを作成する際の考え方やステップについて教えて',
                'assets/images/job5.png',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGuideSection(String title, String content, String imagePath) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: GoogleFonts.notoSerif(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: GoogleFonts.notoSerif(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            Image.asset(imagePath),
          ],
        ),
      ),
    );
  }
}
