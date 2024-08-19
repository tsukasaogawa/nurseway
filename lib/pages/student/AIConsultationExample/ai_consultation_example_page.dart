import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AIConsultationExamplePage extends StatelessWidget {
  const AIConsultationExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AI相談活用例',
          style: GoogleFonts.notoSerif(color: Colors.black),
        ),
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
                'AI相談の例',
                style: GoogleFonts.notoSerif(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              _buildConsultationExample(
                '健康相談',
                '高血圧の病態生理について、医学的ガイドラインに基づいて教えてください。',
                'assets/images/student1.png', // スクリーンショット画像のパスを指定
              ),
              const SizedBox(height: 16),
              _buildConsultationExample(
                '薬剤に関する相談',
                'アスピリンの作用機序と副作用について、最新の医学的ガイドラインに基づいて教えてください。',
                'assets/images/student2.png', // スクリーンショット画像のパスを指定
              ),
              const SizedBox(height: 16),
              _buildConsultationExample(
                '実習で調べそうなこと',
                '尿カテーテルの挿入手順について、医学的ガイドラインに基づいて詳しく教えてください。',
                'assets/images/student3.png', // スクリーンショット画像のパスを指定
              ),
              const SizedBox(height: 16),
              _buildConsultationExample(
                '患者への教育資料の作成',
                '糖尿病患者向けの教育資料を作成する際のポイントを、医学的ガイドラインに基づいて教えてください。',
                'assets/images/student4.png', // スクリーンショット画像のパスを指定
              ),
              const SizedBox(height: 16),
              _buildConsultationExample(
                'SOAPを活用した看護記録の例',
                'SOAP形式を用いた看護記録の具体例を教えてください。',
                'assets/images/student5.png', // スクリーンショット画像のパスを指定
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildConsultationExample(String title, String question, String imagePath) {
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
              question,
              style: GoogleFonts.notoSerif(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            Image.asset(imagePath), // スクリーンショット画像を表示
          ],
        ),
      ),
    );
  }
}
