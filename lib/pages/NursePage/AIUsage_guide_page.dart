import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AIUsageGuideNursePage extends StatelessWidget {
  const AIUsageGuideNursePage({super.key});

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
                '高血圧の病態生理と管理方法',
                '高血圧の病態生理、診断基準、および管理方法について医療ガイダンスを基に教えて。',
                'assets/images/nurse1.png',
              ),
              const SizedBox(height: 16),
              _buildGuideSection(
                '薬剤の作用と副作用',
                'アスピリンの作用と副作用を医療ガイダンスを基に教えて。',
                'assets/images/nurse2.png',
              ),
              const SizedBox(height: 16),
              _buildGuideSection(
                '患者教育資料の作成',
                '糖尿病患者向けの教育資料を医療ガイダンスを基に作成。',
                'assets/images/nurse3.png',
              ),
              const SizedBox(height: 16),
              _buildGuideSection(
                '看護手順の確認',
                '静脈注射の手順を医療ガイダンスを基に教えて。',
                'assets/images/nurse4.png',
              ),
              const SizedBox(height: 16),
              _buildGuideSection(
                '看護記録の書き方',
                'SOAP形式で看護記録の書き方を医療ガイダンスを基に教えて。',
                'assets/images/nurse5.png',
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
