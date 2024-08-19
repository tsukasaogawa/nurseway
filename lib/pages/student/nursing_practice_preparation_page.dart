import 'package:flutter/material.dart';
import 'package:nurseway_app/pages/student/test_values_page.dart';
import 'assessment_tools_page.dart';
import 'information_collection_page.dart';
import 'Related/related_diagram_page.dart';

class NursingPracticePreparationPage extends StatefulWidget {
  const NursingPracticePreparationPage({super.key});

  @override
  _NursingPracticePreparationPageState createState() => _NursingPracticePreparationPageState();
}

class _NursingPracticePreparationPageState extends State<NursingPracticePreparationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('看護実習対策', style: TextStyle(color: Colors.black)),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)], // グラデーションカラー
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GradientButton(
              title: '情報収集テンプレ',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InformationCollectionPage(),
                  ),
                );
              },
            ),
            GradientButton(
              title: '基準値一覧',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TestValuesPage(),
                  ),
                );
              },
            ),
            GradientButton(
              title: 'アセスメントについて',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AssessmentToolsPage(),
                  ),
                );
              },
            ),
            GradientButton(
              title: '関連図の要素まとめ',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RelationChartApp(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class GradientButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const GradientButton({
    required this.title,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      width: double.infinity,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(10.0),
        child: Ink(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)], // グラデーションカラー
              stops: [0.0, 0.5, 1.0],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18, // フォントサイズを大きく設定
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: NursingPracticePreparationPage()));
}
