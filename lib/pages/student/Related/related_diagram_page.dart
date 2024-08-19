import 'package:flutter/material.dart';
import 'package:nurseway_app/pages/student/Related/psychiatric_diseases_page.dart';
import 'orthopedic_diseases_page.dart';
import 'respiratory_diseases_page.dart';
import 'cardiovascular_diseases_page.dart';
import 'gastrointestinal_diseases_page.dart';
import 'urological_diseases_page.dart';
import 'endocrine_diseases_page.dart';
import 'neurological_diseases_page.dart';
import 'pediatric_diseases_page.dart';
import 'gynecological_diseases_page.dart';
import 'immunological_diseases_page.dart';
import 'dermatological_diseases_page.dart';
import 'hematological_diseases_page.dart';
import 'oncological_diseases_page.dart';

void main() {
  runApp(const MaterialApp(
    home: RelationChartApp(),
  ));
}

class RelationChartApp extends StatelessWidget {
  const RelationChartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('関連図の要素まとめ', style: TextStyle(color: Colors.black)),
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
      body: Container(

        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // 横幅を文章に合わせる
            children: [
              const Text(
                '【疾患別関連図要素】\n'
                '実習でよく担当する疾患をもとに、関連図に必要な共通要素をまとめています。ただし、これらは完璧なものでなく、実際の実習では患者の個別性や具体的な状況を考慮する必要があります。',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              const SizedBox(height: 20),
              GradientButton(
                title: '呼吸器疾患',
                onPressed: () => navigateTo(context, const RespiratoryDiseasesPage()),
              ),
              GradientButton(
                title: '循環器疾患',
                onPressed: () => navigateTo(context, const CardiovascularDiseasesPage()),
              ),
              GradientButton(
                title: '消化器疾患',
                onPressed: () => navigateTo(context, const GastrointestinalDiseasesPage()),
              ),
              GradientButton(
                title: '泌尿器疾患',
                onPressed: () => navigateTo(context, const UrologicalDiseasesPage()),
              ),
              GradientButton(
                title: '内分泌疾患',
                onPressed: () => navigateTo(context, const EndocrineDiseasesPage()),
              ),
              GradientButton(
                title: '神経系疾患',
                onPressed: () => navigateTo(context, const NeurologicalDiseasesPage()),
              ),
              GradientButton(
                title: '精神疾患',
                onPressed: () => navigateTo(context, const PsychiatricDiseasesPage()),
              ),
              GradientButton(
                title: '免疫系疾患',
                onPressed: () => navigateTo(context, const ImmunologicalDiseasesPage()),
              ),
              GradientButton(
                title: '血液疾患',
                onPressed: () => navigateTo(context, const HematologicalDiseasesPage()),
              ),
              GradientButton(
                title: '腫瘍疾患',
                onPressed: () => navigateTo(context, const OncologicalDiseasesPage()),
              ),
              GradientButton(
                title: '整形外科疾患',
                onPressed: () => navigateTo(context, const OrthopedicDiseasesPage()),
              ),
              GradientButton(
                title: '皮膚科疾患',
                onPressed: () => navigateTo(context, const DermatologicalDiseasesPage()),
              ),
              GradientButton(
                title: '小児疾患',
                onPressed: () => navigateTo(context, const PediatricDiseasesPage()),
              ),
              GradientButton(
                title: '婦人科疾患',
                onPressed: () => navigateTo(context, const GynecologicalDiseasesPage()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigateTo(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
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
                fontSize: 18,
                color: Colors.black, // テキスト色を黒に設定
              ),
            ),
          ),
        ),
      ),
    );
  }
}
