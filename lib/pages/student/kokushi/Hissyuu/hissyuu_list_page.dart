import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../HissyuuReviewListQuizPage.dart';
import 'hissyuu_model/hissyuu_progress_service.dart';
import 'BasicNursingTechniquesQuizStartPage.dart';
import 'HealthDefinitionQuizStartPage.dart';
import 'HumanCharacteristicsQuizStartPage.dart';
import 'HealthFactorsQuizStartPage.dart';
import 'SocialSecurityQuizStartPage.dart';
import 'NursingEthicsQuizStartPage.dart';
import 'NursingLawQuizStartPage.dart';
import 'LifeCycleQuizStartPage.dart';
import 'PatientFamilyQuizStartPage.dart';
import 'NursingActivitiesQuizStartPage.dart';
import 'BodyStructureQuizStartPage.dart';
import 'SymptomsDiseasesQuizStartPage.dart';
import 'DrugManagementQuizStartPage.dart';
import 'DailyLifeAssistanceQuizStartPage.dart';
import 'SafetyComfortTechniquesQuizStartPage.dart';
import 'NursingProceduresQuizStartPage.dart';

class HissyuuListPage extends StatefulWidget {
  final void Function(double progress) onUpdateProgress;

  const HissyuuListPage({super.key, required this.onUpdateProgress});

  @override
  _HissyuuListPageState createState() => _HissyuuListPageState();
}

class _HissyuuListPageState extends State<HissyuuListPage> {
  int healthDefinitionCompleted = 0;
  int humanCharacteristicsCompleted = 0;
  int basicNursingTechniquesCompleted = 0;
  int healthFactorsCompleted = 0;
  int socialSecurityCompleted = 0;
  int nursingEthicsCompleted = 0;
  int nursingLawCompleted = 0;
  int lifeCycleCompleted = 0;
  int patientFamilyCompleted = 0;
  int nursingActivitiesCompleted = 0;
  int bodyStructureCompleted = 0;
  int symptomsDiseasesCompleted = 0;
  int drugManagementCompleted = 0;
  int dailyLifeAssistanceCompleted = 0;
  int safetyComfortCompleted = 0;
  int nursingProceduresCompleted = 0;

  final HissyuuProgressService _progressService = HissyuuProgressService();

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  Future<void> _loadProgress() async {
    Map<String, int> progress = await _progressService.loadProgress();
    setState(() {
      healthDefinitionCompleted = progress['healthDefinitionCompleted'] ?? 0;
      humanCharacteristicsCompleted = progress['humanCharacteristicsCompleted'] ?? 0;
      basicNursingTechniquesCompleted = progress['basicNursingTechniquesCompleted'] ?? 0;
      healthFactorsCompleted = progress['healthFactorsCompleted'] ?? 0;
      socialSecurityCompleted = progress['socialSecurityCompleted'] ?? 0;
      nursingEthicsCompleted = progress['nursingEthicsCompleted'] ?? 0;
      nursingLawCompleted = progress['nursingLawCompleted'] ?? 0;
      lifeCycleCompleted = progress['lifeCycleCompleted'] ?? 0;
      patientFamilyCompleted = progress['patientFamilyCompleted'] ?? 0;
      nursingActivitiesCompleted = progress['nursingActivitiesCompleted'] ?? 0;
      bodyStructureCompleted = progress['bodyStructureCompleted'] ?? 0;
      symptomsDiseasesCompleted = progress['symptomsDiseasesCompleted'] ?? 0;
      drugManagementCompleted = progress['drugManagementCompleted'] ?? 0;
      dailyLifeAssistanceCompleted = progress['dailyLifeAssistanceCompleted'] ?? 0;
      safetyComfortCompleted = progress['safetyComfortCompleted'] ?? 0;
      nursingProceduresCompleted = progress['nursingProceduresCompleted'] ?? 0;
    });
  }

  Future<void> _updateProgress(String category, int completedQuestions) async {
    await _progressService.saveProgress(category, completedQuestions);
    setState(() {
      switch (category) {
        case 'healthDefinitionCompleted':
          healthDefinitionCompleted = completedQuestions;
          break;
        case 'humanCharacteristicsCompleted':
          humanCharacteristicsCompleted = completedQuestions;
          break;
        case 'basicNursingTechniquesCompleted':
          basicNursingTechniquesCompleted = completedQuestions;
          break;
        case 'healthFactorsCompleted':
          healthFactorsCompleted = completedQuestions;
          break;
        case 'socialSecurityCompleted':
          socialSecurityCompleted = completedQuestions;
          break;
        case 'nursingEthicsCompleted':
          nursingEthicsCompleted = completedQuestions;
          break;
        case 'nursingLawCompleted':
          nursingLawCompleted = completedQuestions;
          break;
        case 'lifeCycleCompleted':
          lifeCycleCompleted = completedQuestions;
          break;
        case 'patientFamilyCompleted':
          patientFamilyCompleted = completedQuestions;
          break;
        case 'nursingActivitiesCompleted':
          nursingActivitiesCompleted = completedQuestions;
          break;
        case 'bodyStructureCompleted':
          bodyStructureCompleted = completedQuestions;
          break;
        case 'symptomsDiseasesCompleted':
          symptomsDiseasesCompleted = completedQuestions;
          break;
        case 'drugManagementCompleted':
          drugManagementCompleted = completedQuestions;
          break;
        case 'dailyLifeAssistanceCompleted':
          dailyLifeAssistanceCompleted = completedQuestions;
          break;
        case 'safetyComfortCompleted':
          safetyComfortCompleted = completedQuestions;
          break;
        case 'nursingProceduresCompleted':
          nursingProceduresCompleted = completedQuestions;
          break;
      }
    });
  }

  Future<void> _resetProgress() async {
    List<String> categories = [
      'healthDefinitionCompleted',
      'humanCharacteristicsCompleted',
      'basicNursingTechniquesCompleted',
      'healthFactorsCompleted',
      'socialSecurityCompleted',
      'nursingEthicsCompleted',
      'nursingLawCompleted',
      'lifeCycleCompleted',
      'patientFamilyCompleted',
      'nursingActivitiesCompleted',
      'bodyStructureCompleted',
      'symptomsDiseasesCompleted',
      'drugManagementCompleted',
      'dailyLifeAssistanceCompleted',
      'safetyComfortCompleted',
      'nursingProceduresCompleted',
    ];

    for (String category in categories) {
      await _progressService.saveProgress(category, 0);
    }

    setState(() {
      healthDefinitionCompleted = 0;
      humanCharacteristicsCompleted = 0;
      basicNursingTechniquesCompleted = 0;
      healthFactorsCompleted = 0;
      socialSecurityCompleted = 0;
      nursingEthicsCompleted = 0;
      nursingLawCompleted = 0;
      lifeCycleCompleted = 0;
      patientFamilyCompleted = 0;
      nursingActivitiesCompleted = 0;
      bodyStructureCompleted = 0;
      symptomsDiseasesCompleted = 0;
      drugManagementCompleted = 0;
      dailyLifeAssistanceCompleted = 0;
      safetyComfortCompleted = 0;
      nursingProceduresCompleted = 0;
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
      appBar: AppBar(
        title: const Text('必修問題'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)],
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 10),
              _buildCategoryButton(context, '健康の定義と理解', 19, healthDefinitionCompleted, 'healthDefinitionCompleted'),
              const SizedBox(height: 10),
              _buildCategoryButton(context, '健康に影響する要因', 23, healthFactorsCompleted, 'healthFactorsCompleted'),
              const SizedBox(height: 10),
              _buildCategoryButton(context, '看護で活用する社会保障', 10, socialSecurityCompleted, 'socialSecurityCompleted'),
              const SizedBox(height: 10),
              _buildCategoryButton(context, '看護における倫理', 13, nursingEthicsCompleted, 'nursingEthicsCompleted'),
              const SizedBox(height: 10),
              _buildCategoryButton(context, '看護に関わる基本的法律', 9, nursingLawCompleted, 'nursingLawCompleted'),
              const SizedBox(height: 10),
              _buildCategoryButton(context, '人間の特性', 13, humanCharacteristicsCompleted, 'humanCharacteristicsCompleted'),
              const SizedBox(height: 10),
              _buildCategoryButton(context, '人間のライフサイクル各期の特徴と生活', 39, lifeCycleCompleted, 'lifeCycleCompleted'),
              const SizedBox(height: 10),
              _buildCategoryButton(context, '看護の対象としての患者と家族', 9, patientFamilyCompleted, 'patientFamilyCompleted'),
              const SizedBox(height: 10),
              _buildCategoryButton(context, '主な看護活動の場と看護の機能', 5, nursingActivitiesCompleted, 'nursingActivitiesCompleted'),
              const SizedBox(height: 10),
              _buildCategoryButton(context, '人体の構造と機能', 10, bodyStructureCompleted, 'bodyStructureCompleted'),
              const SizedBox(height: 10),
              _buildCategoryButton(context, '徴候と疾患', 15, symptomsDiseasesCompleted, 'symptomsDiseasesCompleted'),
              const SizedBox(height: 10),
              _buildCategoryButton(context, '薬物の作用とその管理', 10, drugManagementCompleted, 'drugManagementCompleted'),
              const SizedBox(height: 10),
              _buildCategoryButton(context, '看護における基本技術', 28, basicNursingTechniquesCompleted, 'basicNursingTechniquesCompleted'),
              const SizedBox(height: 10),
              _buildCategoryButton(context, '日常生活援助技術', 40, dailyLifeAssistanceCompleted, 'dailyLifeAssistanceCompleted'),
              const SizedBox(height: 10),
              _buildCategoryButton(context, '患者の安全・安楽を守る看護技術', 30, safetyComfortCompleted, 'safetyComfortCompleted'),
              const SizedBox(height: 10),
              _buildCategoryButton(context, '診療に伴う看護技術', 53, nursingProceduresCompleted, 'nursingProceduresCompleted'),
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
          colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)],
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
                switch (category) {
                  case 'healthDefinitionCompleted':
                    return HealthDefinitionQuizStartPage(
                      lastCompletedQuestion: completedQuestions,
                      onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                    );
                  case 'healthFactorsCompleted':
                    return HealthFactorsQuizStartPage(
                      lastCompletedQuestion: completedQuestions,
                      onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                    );
                  case 'socialSecurityCompleted':
                    return SocialSecurityQuizStartPage(
                      lastCompletedQuestion: completedQuestions,
                      onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                    );
                  case 'nursingEthicsCompleted':
                    return NursingEthicsQuizStartPage(
                      lastCompletedQuestion: completedQuestions,
                      onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                    );
                  case 'nursingLawCompleted':
                    return NursingLawQuizStartPage(
                      lastCompletedQuestion: completedQuestions,
                      onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                    );
                  case 'humanCharacteristicsCompleted':
                    return HumanCharacteristicsQuizStartPage(
                      lastCompletedQuestion: completedQuestions,
                      onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                    );
                  case 'lifeCycleCompleted':
                    return LifeCycleQuizStartPage(
                      lastCompletedQuestion: completedQuestions,
                      onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                    );
                  case 'patientFamilyCompleted':
                    return PatientFamilyQuizStartPage(
                      lastCompletedQuestion: completedQuestions,
                      onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                    );
                  case 'nursingActivitiesCompleted':
                    return NursingActivitiesQuizStartPage(
                      lastCompletedQuestion: completedQuestions,
                      onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                    );
                  case 'bodyStructureCompleted':
                    return BodyStructureQuizStartPage(
                      lastCompletedQuestion: completedQuestions,
                      onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                    );
                  case 'symptomsDiseasesCompleted':
                    return SymptomsDiseasesQuizStartPage(
                      lastCompletedQuestion: completedQuestions,
                      onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                    );
                  case 'drugManagementCompleted':
                    return DrugManagementQuizStartPage(
                      lastCompletedQuestion: completedQuestions,
                      onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                    );
                  case 'basicNursingTechniquesCompleted':
                    return BasicNursingTechniquesQuizStartPage(
                      lastCompletedQuestion: completedQuestions,
                      onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                    );
                  case 'dailyLifeAssistanceCompleted':
                    return DailyLifeAssistanceQuizStartPage(
                      lastCompletedQuestion: completedQuestions,
                      onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                    );
                  case 'safetyComfortCompleted':
                    return SafetyComfortTechniquesQuizStartPage(
                      lastCompletedQuestion: completedQuestions,
                      onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                    );
                  case 'nursingProceduresCompleted':
                    return NursingProceduresQuizStartPage(
                      lastCompletedQuestion: completedQuestions,
                      onProgressUpdate: (completedQuestions) => _updateProgress(category, completedQuestions),
                    );
                  default:
                    return Container(); // 必要に応じてデフォルトケースを置き換えてください
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
            borderRadius: BorderRadius.circular(30)),
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
          colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),

    );
  }
}
