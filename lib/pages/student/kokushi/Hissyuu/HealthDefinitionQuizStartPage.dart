import 'package:flutter/material.dart';
import 'HealthDefinitionPage.dart';
import 'hissyuu_model/hissyuu_quiz_data.dart';

class HealthDefinitionQuizStartPage extends StatelessWidget {
  final int lastCompletedQuestion;
  final void Function(int completedQuestions) onProgressUpdate;

  const HealthDefinitionQuizStartPage({
    super.key,
    required this.lastCompletedQuestion,
    required this.onProgressUpdate,
  });

  @override
  Widget build(BuildContext context) {
    int totalQuestions = healthDefinitionQuestions.length; // 実際の問題数を取得
    int remainingQuestions = totalQuestions - lastCompletedQuestion; // 残りの問題数を計算
    double progress = lastCompletedQuestion / totalQuestions; // 達成率を計算

    return Scaffold(
      appBar: AppBar(
        title: const Text('健康の定義と理解', style: TextStyle(color: Colors.black)),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFFFE4E1), Color(0xFFFFC0CB), Color(0xFFFFB6C1)], // 桜色のグラデーション
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '前回解いた問題: $lastCompletedQuestion 問',
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
              const SizedBox(height: 10),
              Text(
                '残りの問題: $remainingQuestions 問',
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
              const SizedBox(height: 20),
              LinearProgressIndicator(
                value: progress, // 計算した達成率を使用
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.orange),
                minHeight: 10,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: lastCompletedQuestion > 0 ? () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HealthDefinitionPage(
                        lastCompletedQuestion: lastCompletedQuestion,
                        onProgressUpdate: onProgressUpdate,
                      ),
                    ),
                  );
                  if (result != null) {
                    Navigator.pop(context, result);
                  }
                } : null,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                  backgroundColor: const Color(0xFFFFC0CB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  '続きから行う',
                  style: TextStyle(fontSize: 18, color: Colors.black), // テキスト色を黒色に
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HealthDefinitionPage(
                        lastCompletedQuestion: 0,
                        onProgressUpdate: onProgressUpdate,
                      ),
                    ),
                  );
                  if (result != null) {
                    Navigator.pop(context, result);
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                  backgroundColor: const Color(0xFFFFC0CB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  '初めから行う',
                  style: TextStyle(fontSize: 18, color: Colors.black), // テキスト色を黒色に
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
