import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AIIppanTopicsPage extends StatefulWidget {
  const AIIppanTopicsPage({super.key});

  @override
  _AIIppanTopicsPageState createState() => _AIIppanTopicsPageState();
}

class _AIIppanTopicsPageState extends State<AIIppanTopicsPage> {
  // Example completed questions data for each topic.
  Map<String, int> topicsCompleted = {
    '人体の構造と機能': 5,
    '疾病の成り立ちと回復の促進': 8,
    '健康支援と社会保障制度': 4,
    '基礎看護学': 6,
    '成人看護学': 10,
    '老年看護学': 2,
    '小児看護学': 3,
    '母性看護学': 7,
    '精神看護学': 4,
    '在宅看護論／地域・在宅看護論': 6,
    '看護の統合と実践': 9,
  };

  // Total questions for each topic.
  Map<String, int> totalQuestions = {
    '人体の構造と機能': 10,
    '疾病の成り立ちと回復の促進': 15,
    '健康支援と社会保障制度': 10,
    '基礎看護学': 12,
    '成人看護学': 20,
    '老年看護学': 10,
    '小児看護学': 10,
    '母性看護学': 15,
    '精神看護学': 10,
    '在宅看護論／地域・在宅看護論': 10,
    '看護の統合と実践': 15,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI一般問題'),
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: totalQuestions.keys.map((topic) {
              return _buildCategoryListTile(
                context,
                title: topic,
                totalQuestions: totalQuestions[topic]!,
                completedQuestions: topicsCompleted[topic] ?? 0,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryListTile(BuildContext context, {required String title, required int totalQuestions, required int completedQuestions}) {
    double progress = completedQuestions / totalQuestions;

    return Column(
      children: [
        ListTile(
          title: Text(title, style: GoogleFonts.notoSerif(fontSize: 18)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.orange),
                minHeight: 5,
              ),
              const SizedBox(height: 5),
              Text(
                '達成率: $completedQuestions/$totalQuestions',
                style: const TextStyle(fontSize: 14, color: Colors.black),
              ),
            ],
          ),
          onTap: () {
            // Define actions on tap
          },
        ),
        const Divider(),
      ],
    );
  }
}
