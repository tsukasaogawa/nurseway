import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../models/quiz_question.dart';
import 'Hissyuu/hissyuu_model/hissyuu_progress_service.dart';
import 'Hissyuu/hissyuu_model/hissyuu_quiz_data.dart';

class HissyuuReviewListQuizPage extends StatefulWidget {
  const HissyuuReviewListQuizPage({super.key});

  @override
  _HissyuuReviewListQuizPageState createState() => _HissyuuReviewListQuizPageState();
}

class _HissyuuReviewListQuizPageState extends State<HissyuuReviewListQuizPage> {
  List<int> _healthDefinitionReviewList = [];
  List<int> _humanCharacteristicsReviewList = [];
  List<int> _healthFactorsReviewList = [];
  List<int> _socialSecurityReviewList = [];
  List<int> _nursingEthicsReviewList = [];
  List<int> _nursingLawReviewList = [];
  List<int> _lifeCycleReviewList = [];
  List<int> _patientFamilyReviewList = [];
  List<int> _nursingActivitiesReviewList = [];
  List<int> _bodyStructureReviewList = [];
  List<int> _symptomsDiseasesReviewList = [];
  List<int> _drugManagementReviewList = [];
  List<int> _basicNursingTechniquesReviewList = [];
  List<int> _dailyLifeAssistanceReviewList = [];
  List<int> _safetyComfortReviewList = [];
  List<int> _nursingProceduresReviewList = [];

  bool _isEditing = false;
  String _selectedCategory = '';

  @override
  void initState() {
    super.initState();
    _loadReviewLists();
  }

  Future<void> _loadReviewLists() async {
    final HissyuuProgressService progressService = HissyuuProgressService();
    _healthDefinitionReviewList = await progressService.getReviewList('healthDefinitionReviewList');
    _humanCharacteristicsReviewList = await progressService.getReviewList('humanCharacteristicsReviewList');
    _healthFactorsReviewList = await progressService.getReviewList('healthFactorsReviewList');
    _socialSecurityReviewList = await progressService.getReviewList('socialSecurityReviewList');
    _nursingEthicsReviewList = await progressService.getReviewList('nursingEthicsReviewList');
    _nursingLawReviewList = await progressService.getReviewList('nursingLawReviewList');
    _lifeCycleReviewList = await progressService.getReviewList('lifeCycleReviewList');
    _patientFamilyReviewList = await progressService.getReviewList('patientFamilyReviewList');
    _nursingActivitiesReviewList = await progressService.getReviewList('nursingActivitiesReviewList');
    _bodyStructureReviewList = await progressService.getReviewList('bodyStructureReviewList');
    _symptomsDiseasesReviewList = await progressService.getReviewList('symptomsDiseasesReviewList');
    _drugManagementReviewList = await progressService.getReviewList('drugManagementReviewList');
    _basicNursingTechniquesReviewList = await progressService.getReviewList('basicNursingTechniquesReviewList');
    _dailyLifeAssistanceReviewList = await progressService.getReviewList('dailyLifeAssistanceReviewList');
    _safetyComfortReviewList = await progressService.getReviewList('safetyComfortReviewList');
    _nursingProceduresReviewList = await progressService.getReviewList('nursingProceduresReviewList');

    _sortAllReviewLists();

    if (mounted) {
      setState(() {});
    }
  }

  void _sortAllReviewLists() {
    _healthDefinitionReviewList.sort();
    _humanCharacteristicsReviewList.sort();
    _healthFactorsReviewList.sort();
    _socialSecurityReviewList.sort();
    _nursingEthicsReviewList.sort();
    _nursingLawReviewList.sort();
    _lifeCycleReviewList.sort();
    _patientFamilyReviewList.sort();
    _nursingActivitiesReviewList.sort();
    _bodyStructureReviewList.sort();
    _symptomsDiseasesReviewList.sort();
    _drugManagementReviewList.sort();
    _basicNursingTechniquesReviewList.sort();
    _dailyLifeAssistanceReviewList.sort();
    _safetyComfortReviewList.sort();
    _nursingProceduresReviewList.sort();
  }

  Future<void> _removeFromReviewList(String category, int questionIndex) async {
    final HissyuuProgressService progressService = HissyuuProgressService();
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
              colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)],
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
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCategoryButton('健康の定義', 'healthDefinitionReviewList', _healthDefinitionReviewList.length),
            const SizedBox(height: 20),
            _buildCategoryButton('人間の特性', 'humanCharacteristicsReviewList', _humanCharacteristicsReviewList.length),
            const SizedBox(height: 20),
            _buildCategoryButton('健康に影響する要因', 'healthFactorsReviewList', _healthFactorsReviewList.length),
            const SizedBox(height: 20),
            _buildCategoryButton('社会保障', 'socialSecurityReviewList', _socialSecurityReviewList.length),
            const SizedBox(height: 20),
            _buildCategoryButton('看護倫理', 'nursingEthicsReviewList', _nursingEthicsReviewList.length),
            const SizedBox(height: 20),
            _buildCategoryButton('看護法', 'nursingLawReviewList', _nursingLawReviewList.length),
            const SizedBox(height: 20),
            _buildCategoryButton('ライフサイクル', 'lifeCycleReviewList', _lifeCycleReviewList.length),
            const SizedBox(height: 20),
            _buildCategoryButton('患者と家族', 'patientFamilyReviewList', _patientFamilyReviewList.length),
            const SizedBox(height: 20),
            _buildCategoryButton('看護活動', 'nursingActivitiesReviewList', _nursingActivitiesReviewList.length),
            const SizedBox(height: 20),
            _buildCategoryButton('体の構造', 'bodyStructureReviewList', _bodyStructureReviewList.length),
            const SizedBox(height: 20),
            _buildCategoryButton('症状と疾患', 'symptomsDiseasesReviewList', _symptomsDiseasesReviewList.length),
            const SizedBox(height: 20),
            _buildCategoryButton('薬物管理', 'drugManagementReviewList', _drugManagementReviewList.length),
            const SizedBox(height: 20),
            _buildCategoryButton('看護技術', 'basicNursingTechniquesReviewList', _basicNursingTechniquesReviewList.length),
            const SizedBox(height: 20),
            _buildCategoryButton('日常生活援助', 'dailyLifeAssistanceReviewList', _dailyLifeAssistanceReviewList.length),
            const SizedBox(height: 20),
            _buildCategoryButton('安全と快適', 'safetyComfortReviewList', _safetyComfortReviewList.length),
            const SizedBox(height: 20),
            _buildCategoryButton('診療手順', 'nursingProceduresReviewList', _nursingProceduresReviewList.length),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(String title, String category, int count) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => _selectCategory(category),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          backgroundColor: const Color(0xFF81D4FA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, color: Colors.black),
            ),
            Text(
              '$count問', // 問題数を表示
              style: const TextStyle(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReviewList() {
    List<int> reviewList;
    List<QuizQuestion> questions;
    String displayName;

    switch (_selectedCategory) {
      case 'healthDefinitionReviewList':
        reviewList = _healthDefinitionReviewList;
        questions = healthDefinitionQuestions;
        displayName = '健康の定義';
        break;
      case 'humanCharacteristicsReviewList':
        reviewList = _humanCharacteristicsReviewList;
        questions = humanCharacteristicsQuestions;
        displayName = '人間の特性';
        break;
      case 'healthFactorsReviewList':
        reviewList = _healthFactorsReviewList;
        questions = healthFactorsQuestions;
        displayName = '健康に影響する要因';
        break;
      case 'socialSecurityReviewList':
        reviewList = _socialSecurityReviewList;
        questions = nursingSocialSecurityQuestions;
        displayName = '社会保障';
        break;
      case 'nursingEthicsReviewList':
        reviewList = _nursingEthicsReviewList;
        questions = nursingEthicsQuestions;
        displayName = '看護倫理';
        break;
      case 'nursingLawReviewList':
        reviewList = _nursingLawReviewList;
        questions = nursingLawQuestions;
        displayName = '看護法';
        break;
      case 'lifeCycleReviewList':
        reviewList = _lifeCycleReviewList;
        questions = humanLifeCycleQuestions;
        displayName = 'ライフサイクル';
        break;
      case 'patientFamilyReviewList':
        reviewList = _patientFamilyReviewList;
        questions = nursingTargetQuestions;
        displayName = '患者と家族';
        break;
      case 'nursingActivitiesReviewList':
        reviewList = _nursingActivitiesReviewList;
        questions = nursingActivityPlacesQuestions;
        displayName = '看護活動';
        break;
      case 'bodyStructureReviewList':
        reviewList = _bodyStructureReviewList;
        questions = humanBodyStructureQuestions;
        displayName = '体の構造';
        break;
      case 'symptomsDiseasesReviewList':
        reviewList = _symptomsDiseasesReviewList;
        questions = symptomsAndDiseasesQuestions;
        displayName = '症状と疾患';
        break;
      case 'drugManagementReviewList':
        reviewList = _drugManagementReviewList;
        questions = drugEffectsAndManagementQuestions;
        displayName = '薬物管理';
        break;
      case 'basicNursingTechniquesReviewList':
        reviewList = _basicNursingTechniquesReviewList;
        questions = basicNursingTechniquesQuestions;
        displayName = '看護技術';
        break;
      case 'dailyLifeAssistanceReviewList':
        reviewList = _dailyLifeAssistanceReviewList;
        questions = dailyLifeAssistanceTechniquesQuestions;
        displayName = '日常生活援助';
        break;
      case 'safetyComfortReviewList':
        reviewList = _safetyComfortReviewList;
        questions = patientSafetyTechniquesQuestions;
        displayName = '安全と快適';
        break;
      case 'nursingProceduresReviewList':
        reviewList = _nursingProceduresReviewList;
        questions = nursingWithTreatmentTechniquesQuestions;
        displayName = '診療手順';
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
              colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)],
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
                      backgroundColor: const Color(0xFF81D4FA),
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
