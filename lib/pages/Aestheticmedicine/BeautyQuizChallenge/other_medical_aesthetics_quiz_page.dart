import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'services/progress_service.dart';
import 'beautyquizmodel/other_medical_aesthetics_quiz_data.dart';
import '../../../models/quiz_question.dart';

class OtherMedicalAestheticsQuizPage extends StatefulWidget {
  final int initialPage;
  final void Function(int completedQuestions) onProgressUpdate;

  const OtherMedicalAestheticsQuizPage({
    super.key,
    required this.initialPage,
    required this.onProgressUpdate,
  });

  @override
  _OtherMedicalAestheticsQuizPageState createState() => _OtherMedicalAestheticsQuizPageState();
}

class _OtherMedicalAestheticsQuizPageState extends State<OtherMedicalAestheticsQuizPage> with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController _animationController;
  late Animation<Offset> _positionAnimation;
  late Animation<double> _opacityAnimation;
  int _currentPage = 0;
  List<int> _completedQuestions = List.filled(otherMedicalAestheticsQuizQuestions.length, 0);
  String selectedAnswer = '';
  bool showExplanation = false;
  bool showCorrectAnimation = false;
  bool showIncorrectAnimation = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialPage);
    _currentPage = widget.initialPage;

    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _positionAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _opacityAnimation = Tween<double>(
      begin: 0.2,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    if (widget.initialPage == 0) {
      _resetProgress();
    } else {
      _loadProgress(); // 進捗のロード
    }
  }

  void _loadProgress() async {
    final ProgressService progressService = ProgressService();
    int progress = await progressService.loadProgressByCategory('otherMedicalAestheticsCompleted'); // カテゴリの進捗をロード
    setState(() {
      _completedQuestions = List.filled(otherMedicalAestheticsQuizQuestions.length, 0);
      for (int i = 0; i < progress; i++) {
        _completedQuestions[i] = 1;
      }
    });
  }

  void _resetProgress() async {
    final ProgressService progressService = ProgressService();
    await progressService.saveProgress('otherMedicalAestheticsCompleted', 0);
    setState(() {
      _completedQuestions = List.filled(otherMedicalAestheticsQuizQuestions.length, 0);
    });
    widget.onProgressUpdate(0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (_currentPage < otherMedicalAestheticsQuizQuestions.length - 1) {
      _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
      setState(() {
        selectedAnswer = '';
        showExplanation = false;
        showCorrectAnimation = false;
        showIncorrectAnimation = false;
      });
    }
  }

  void _updateCompletedQuestions(int index) {
    setState(() {
      _completedQuestions[index] = 1;
    });
    _saveProgress();
  }

  Future<void> _saveProgress() async {
    final ProgressService progressService = ProgressService();
    await progressService.saveProgress('otherMedicalAestheticsCompleted', _completedQuestions.where((q) => q == 1).length);
    widget.onProgressUpdate(_completedQuestions.where((q) => q == 1).length);
  }

  void _selectAnswer(String answer, String correctAnswer) {
    if (selectedAnswer.isNotEmpty) {
      return;
    }
    setState(() {
      selectedAnswer = answer;
      showExplanation = true;
      _updateCompletedQuestions(_currentPage);
      _animationController.forward().then((_) {
        Future.delayed(const Duration(seconds: 1), () {
          if (mounted) {
            _animationController.reverse();
          }
        });
      });
      if (answer == correctAnswer) {
        showCorrectAnimation = true;
        Future.delayed(const Duration(seconds: 2), () {
          if (mounted) {
            setState(() {
              showCorrectAnimation = false;
            });
          }
        });
      } else {
        showIncorrectAnimation = true;
        Future.delayed(const Duration(seconds: 2), () {
          if (mounted) {
            setState(() {
              showIncorrectAnimation = false;
            });
          }
        });
      }
    });
  }

  Future<void> _addToReviewList(int questionIndex) async {
    final ProgressService progressService = ProgressService();
    await progressService.addToReviewList('otherMedicalAestheticsReviewList', questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, _completedQuestions.where((q) => q == 1).length);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('その他の美容医療クイズ'),
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
        body: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: otherMedicalAestheticsQuizQuestions.length,
              onPageChanged: (page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: _buildQuestionPage(otherMedicalAestheticsQuizQuestions[index], index),
                );
              },
            ),
            if (showCorrectAnimation || showIncorrectAnimation)
              AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return SlideTransition(
                    position: _positionAnimation,
                    child: Center(
                      child: AnimatedOpacity(
                        opacity: _opacityAnimation.value,
                        duration: const Duration(milliseconds: 500),
                        child: showCorrectAnimation
                            ? CustomPaint(
                                size: const Size(200, 200),
                                painter: RingPainter(Colors.blue),
                              )
                            : const Icon(
                                Icons.close,
                                color: Colors.red,
                                size: 200,
                              ),
                      ),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestionPage(QuizQuestion question, int index) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '第${index + 1}問 / ${otherMedicalAestheticsQuizQuestions.length}問',
            style: GoogleFonts.notoSerif(fontSize: 18, color: Colors.black),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: Text(
              question.question,
              style: GoogleFonts.notoSerif(fontSize: 18, color: Colors.black),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Column(
              children: question.options.map((option) {
                return InkWell(
                  onTap: () {
                    _selectAnswer(option, question.correctAnswer);
                  },
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: selectedAnswer == option ? Colors.orange[100] : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        if (selectedAnswer.isNotEmpty)
                          option == question.correctAnswer
                              ? CustomPaint(
                                  size: const Size(24, 24),
                                  painter: RingPainter(Colors.blue),
                                )
                              : const Icon(
                                  Icons.close,
                                  color: Colors.red,
                                  size: 24,
                                ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            option,
                            style: GoogleFonts.notoSerif(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 20),
          if (showExplanation)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '正解: ${question.correctAnswer}',
                  style: GoogleFonts.notoSerif(fontSize: 18, color: Colors.black),
                ),
                const SizedBox(height: 10),
                Text(
                  '解説:\n${question.explanation}',
                  style: GoogleFonts.notoSerif(fontSize: 16, color: Colors.black),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _addToReviewList(_currentPage);
                          _nextPage();
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                          backgroundColor: const Color(0xFFFFC0CB),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          '復習問題リストへ',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      const SizedBox(width: 20),

                      ElevatedButton(
                        onPressed: _nextPage,
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                          backgroundColor: const Color(0xFFFFC0CB),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          '次の問題へ',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildCircleAnimationOverlay(double size, Color color) {
    return Center(
      child: AnimatedOpacity(
        opacity: showCorrectAnimation ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 500),
        child: CustomPaint(
          size: Size(size, size),
          painter: RingPainter(color),
        ),
      ),
    );
  }

  Widget _buildAnimationOverlay(IconData icon, Color color, double size) {
    return Center(
      child: AnimatedOpacity(
        opacity: showIncorrectAnimation ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 500),
        child: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}

class RingPainter extends CustomPainter {
  final Color color;

  RingPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width / 10;

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      size.width / 2,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
