import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'services/progress_service.dart';
import 'cosmetic_surgery_quiz_start_page.dart';
import 'dermatology_quiz_start_page.dart';
import 'other_medical_aesthetics_quiz_start_page.dart';
import 'review_list_quiz_page.dart';

class BeautyQuizChallengePage extends StatefulWidget {
  const BeautyQuizChallengePage({super.key});

  @override
  _BeautyQuizChallengePageState createState() => _BeautyQuizChallengePageState();
}

class _BeautyQuizChallengePageState extends State<BeautyQuizChallengePage> {
  int cosmeticSurgeryCompleted = 0;
  int dermatologyCompleted = 0;
  int otherMedicalAestheticsCompleted = 0;
  final ProgressService _progressService = ProgressService();

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  Future<void> _loadProgress() async {
    Map<String, int> progress = await _progressService.loadProgress();
    setState(() {
      cosmeticSurgeryCompleted = progress['cosmeticSurgeryCompleted'] ?? 0;
      dermatologyCompleted = progress['dermatologyCompleted'] ?? 0;
      otherMedicalAestheticsCompleted = progress['otherMedicalAestheticsCompleted'] ?? 0;
    });
    print('Loaded progress in state: $progress');
  }

  Future<void> _updateProgress(String category, int completedQuestions) async {
    await _progressService.saveProgress(category, completedQuestions);
    setState(() {
      if (category == 'cosmeticSurgeryCompleted') {
        cosmeticSurgeryCompleted = completedQuestions;
      } else if (category == 'dermatologyCompleted') {
        dermatologyCompleted = completedQuestions;
      } else if (category == 'otherMedicalAestheticsCompleted') {
        otherMedicalAestheticsCompleted = completedQuestions;
      }
    });
    print('Updated progress in state: $category = $completedQuestions');
  }

  Future<void> _resetProgress() async {
    await _progressService.saveProgress('cosmeticSurgeryCompleted', 0);
    await _progressService.saveProgress('dermatologyCompleted', 0);
    await _progressService.saveProgress('otherMedicalAestheticsCompleted', 0);
    setState(() {
      cosmeticSurgeryCompleted = 0;
      dermatologyCompleted = 0;
      otherMedicalAestheticsCompleted = 0;
    });
  }

  Future<void> _showResetConfirmationDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('確認'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('進捗をリセットしてもよろしいですか？'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('キャンセル'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('リセット'),
              onPressed: () {
                _resetProgress();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          title: const Text('美容4択チャレンジ'),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFFE4E1), Color(0xFFFFC0CB), Color(0xFFFFB6C1)],
                stops: [0.0, 0.66, 1.0],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _showResetConfirmationDialog,
              tooltip: '進捗をリセット',
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 10),
              _buildCategoryButton(context, '美容外科', 75, cosmeticSurgeryCompleted, 'cosmeticSurgeryCompleted'),
              const SizedBox(height: 10),
              _buildCategoryButton(context, '美容皮膚科', 35, dermatologyCompleted, 'dermatologyCompleted'),
              const SizedBox(height: 10),
              _buildCategoryButton(context, 'その他の美容医療', 40, otherMedicalAestheticsCompleted, 'otherMedicalAestheticsCompleted'),
              const SizedBox(height: 20),
              _buildReviewListButton(context),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryButton(BuildContext context, String title, int totalQuestions, int completedQuestions, String category) {
    double progress = completedQuestions / totalQuestions;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      height: 120,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFFE4E1), Color(0xFFFFC0CB), Color(0xFFFFB6C1)],
          stops: [0.0, 0.66, 1.0],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: ElevatedButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                if (category == 'cosmeticSurgeryCompleted') {
                  return CosmeticSurgeryQuizStartPage(
                    lastCompletedQuestion: completedQuestions,
                    onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                  );
                } else if (category == 'dermatologyCompleted') {
                  return DermatologyQuizStartPage(
                    lastCompletedQuestion: completedQuestions,
                    onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                  );
                } else {
                  return OtherMedicalAestheticsQuizStartPage(
                    lastCompletedQuestion: completedQuestions,
                    onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                  );
                }
              },
            ),
          );
          if (result != null) {
            _updateProgress(category, result);
          }
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          minimumSize: const Size(double.infinity, 120),
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          textStyle: GoogleFonts.notoSerif(fontSize: 18),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.orange),
                minHeight: 5,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              '達成率: ${completedQuestions.toString()}/${totalQuestions.toString()}',
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReviewListButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      height: 60,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFFE4E1), Color(0xFFFFC0CB), Color(0xFFFFB6C1)],
          stops: [0.0, 0.66, 1.0],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ReviewListQuizPage(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          minimumSize: const Size(double.infinity, 60),
          padding: const EdgeInsets.symmetric(vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          textStyle: GoogleFonts.notoSerif(fontSize: 18),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: const Text('復習問題リスト'),
      ),
    );
  }
}
