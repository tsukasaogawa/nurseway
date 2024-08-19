import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../models/quiz_question.dart';
import 'services/progress_service.dart';
import 'beautyquizmodel/cosmetic_surgery_quiz_data.dart';
import 'beautyquizmodel/dermatology_quiz_data.dart';
import 'beautyquizmodel/other_medical_aesthetics_quiz_data.dart';

class ReviewListQuizPage extends StatefulWidget {
  const ReviewListQuizPage({super.key});

  @override
  _ReviewListQuizPageState createState() => _ReviewListQuizPageState();
}

class _ReviewListQuizPageState extends State<ReviewListQuizPage> {
  List<int> _cosmeticSurgeryReviewList = [];
  List<int> _dermatologyReviewList = [];
  List<int> _otherMedicalAestheticsReviewList = [];
  bool _isEditing = false;
  String _selectedCategory = '';

  @override
  void initState() {
    super.initState();
    _loadReviewLists();
  }

  Future<void> _loadReviewLists() async {
    final ProgressService progressService = ProgressService();
    _cosmeticSurgeryReviewList = await progressService.getReviewList('cosmeticSurgeryReviewList');
    _dermatologyReviewList = await progressService.getReviewList('dermatologyReviewList');
    _otherMedicalAestheticsReviewList = await progressService.getReviewList('otherMedicalAestheticsReviewList');

    _cosmeticSurgeryReviewList.sort();
    _dermatologyReviewList.sort();
    _otherMedicalAestheticsReviewList.sort();

    if (mounted) {
      setState(() {});
    }
  }

  Future<void> _removeFromReviewList(String category, int questionIndex) async {
    final ProgressService progressService = ProgressService();
    await progressService.removeFromReviewList(category, questionIndex);
    await _loadReviewLists();
  }

  void _selectCategory(String category) {
    setState(() {
      _selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('復習問題リスト'),
        actions: [
          if (_selectedCategory.isNotEmpty)
            IconButton(
              icon: Icon(_isEditing ? Icons.done : Icons.edit),
              onPressed: () {
                setState(() {
                  _isEditing = !_isEditing;
                });
              },
            ),
        ],
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
      body: _selectedCategory.isEmpty ? _buildCategoryButtons() : _buildReviewList(),
    );
  }

  Widget _buildCategoryButtons() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildCategoryButton(
            context,
            title: '美容外科 (${_cosmeticSurgeryReviewList.length}問)',
            onPressed: () => _selectCategory('cosmeticSurgeryReviewList'),
          ),
          const SizedBox(height: 20),
          _buildCategoryButton(
            context,
            title: '美容皮膚科 (${_dermatologyReviewList.length}問)',
            onPressed: () => _selectCategory('dermatologyReviewList'),
          ),
          const SizedBox(height: 20),
          _buildCategoryButton(
            context,
            title: 'その他の美容医療 (${_otherMedicalAestheticsReviewList.length}問)',
            onPressed: () => _selectCategory('otherMedicalAestheticsReviewList'),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryButton(BuildContext context, {required String title, required VoidCallback onPressed}) {
    return SizedBox(
      width: double.infinity, // ボタンの横幅を画面幅いっぱいにする
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          backgroundColor: const Color(0xFFFFC0CB),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }

  Widget _buildReviewList() {
    List<int> reviewList;
    List<QuizQuestion> questions;
    String displayName;

    switch (_selectedCategory) {
      case 'cosmeticSurgeryReviewList':
        reviewList = _cosmeticSurgeryReviewList;
        questions = cosmeticSurgeryQuizQuestions;
        displayName = '美容外科';
        break;
      case 'dermatologyReviewList':
        reviewList = _dermatologyReviewList;
        questions = dermatologyQuizQuestions;
        displayName = '美容皮膚科';
        break;
      case 'otherMedicalAestheticsReviewList':
        reviewList = _otherMedicalAestheticsReviewList;
        questions = otherMedicalAestheticsQuizQuestions;
        displayName = 'その他の美容医療';
        break;
      default:
        return Center(
          child: Text(
            '復習問題がありません',
            style: GoogleFonts.notoSerif(fontSize: 18, color: Colors.black),
          ),
        );
    }

    if (reviewList.isEmpty) {
      return Center(
        child: Text(
          '復習問題がありません',
          style: GoogleFonts.notoSerif(fontSize: 18, color: Colors.black),
        ),
      );
    }

    return ListView(
      children: _buildCategoryReviewList(reviewList, questions, _selectedCategory, displayName),
    );
  }

  List<Widget> _buildCategoryReviewList(List<int> reviewList, List<QuizQuestion> questions, String category, String displayName) {
    return reviewList.map((questionIndex) {
      QuizQuestion question = questions[questionIndex];

      return Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
        ),
        child: ListTile(
          title: Text(
            '$displayName　第${questionIndex + 1}問／${questions.length}問',
            style: GoogleFonts.notoSerif(fontSize: 18, color: Colors.black),
          ),
          subtitle: Text(
            question.question,
            style: GoogleFonts.notoSerif(fontSize: 16, color: Colors.black),
          ),
          trailing: _isEditing
              ? IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    _removeFromReviewList(category, questionIndex);
                  },
                )
              : null,
          onTap: _isEditing
              ? null
              : () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizDetailPage(
                        questionIndex: questionIndex,
                        reviewList: reviewList,
                        questions: questions,
                        category: category,
                      ),
                    ),
                  ).then((_) {
                    _loadReviewLists();
                  });
                },
        ),
      );
    }).toList();
  }
}

class QuizDetailPage extends StatefulWidget {
  final int questionIndex;
  final List<int> reviewList;
  final List<QuizQuestion> questions;
  final String category;

  const QuizDetailPage({
    super.key,
    required this.questionIndex,
    required this.reviewList,
    required this.questions,
    required this.category,
  });

  @override
  _QuizDetailPageState createState() => _QuizDetailPageState();
}

class _QuizDetailPageState extends State<QuizDetailPage> with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController _animationController;
  late Animation<Offset> _positionAnimation;
  late Animation<double> _opacityAnimation;
  int _currentPage = 0;
  String selectedAnswer = '';
  bool showExplanation = false;
  bool showCorrectAnimation = false;
  bool showIncorrectAnimation = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.reviewList.indexOf(widget.questionIndex));
    _currentPage = widget.reviewList.indexOf(widget.questionIndex);

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
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (_currentPage < widget.reviewList.length - 1) {
      _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
      setState(() {
        _currentPage++;
        selectedAnswer = '';
        showExplanation = false;
        showCorrectAnimation = false;
        showIncorrectAnimation = false;
      });
    }
  }

  void _selectAnswer(String answer, String correctAnswer) {
    if (selectedAnswer.isNotEmpty) {
      return;
    }
    setState(() {
      selectedAnswer = answer;
      showExplanation = true;
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
            _nextPage();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('クイズ詳細'),
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
            itemCount: widget.reviewList.length,
            onPageChanged: (page) {
              setState(() {
                _currentPage = page;
                selectedAnswer = '';
                showExplanation = false;
                showCorrectAnimation = false;
                showIncorrectAnimation = false;
              });
            },
            itemBuilder: (context, index) {
              int questionIndex = widget.reviewList[index];
              return SingleChildScrollView(
                child: _buildQuestionPage(widget.questions[questionIndex], questionIndex),
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
    );
  }

  Widget _buildQuestionPage(QuizQuestion question, int index) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '第${index + 1}問 / ${widget.questions.length}問',
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
                  child: ElevatedButton(
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
                ),
              ],
            ),
        ],
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
