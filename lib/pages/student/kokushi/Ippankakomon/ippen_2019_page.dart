import 'package:flutter/material.dart';

class Ippan2019Page extends StatelessWidget {
  final int lastCompletedQuestion;
  final void Function(int completedQuestions) onProgressUpdate;

  const Ippan2019Page({
    super.key,
    required this.lastCompletedQuestion,
    required this.onProgressUpdate,
  });

  @override
  Widget build(BuildContext context) {
    int totalQuestions = 190;
    int remainingQuestions = totalQuestions - lastCompletedQuestion;
    double progress = lastCompletedQuestion / totalQuestions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('2019一般問題'),
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
                value: progress,
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                minHeight: 10,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // 続きから行う処理
                  onProgressUpdate(lastCompletedQuestion + 1); // 例として、1問進めたと仮定
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50), backgroundColor: const Color(0xFF4FC3F7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  '続きから行う',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // 初めから行う処理
                  onProgressUpdate(0); // 初めからの場合は0にリセット
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50), backgroundColor: const Color(0xFF4FC3F7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  '初めから行う',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
