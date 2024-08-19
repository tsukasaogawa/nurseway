import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HissyuuProgressService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final User? _currentUser = FirebaseAuth.instance.currentUser;

  // カテゴリーごとの進捗を読み込む
  Future<int> loadProgressByCategory(String category) async {
    if (_currentUser == null) return 0;
    DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore
        .collection('hissyuu_progress')
        .doc(_currentUser!.uid)
        .get();

    if (snapshot.exists) {
      return snapshot.data()?[category] ?? 0;
    } else {
      return 0;
    }
  }

  // 全体の進捗を一度に読み込む（オプションで保持）
  Future<Map<String, int>> loadProgress() async {
  if (_currentUser == null) return {};
  DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore
      .collection('hissyuu_progress')
      .doc(_currentUser!.uid)
      .get();

  if (snapshot.exists) {
    final progress = {
      'basicNursingTechniquesCompleted': (snapshot.data()?['basicNursingTechniquesCompleted'] ?? 0) as int,
      'healthFactorsCompleted': (snapshot.data()?['healthFactorsCompleted'] ?? 0) as int,
      'socialSecurityCompleted': (snapshot.data()?['socialSecurityCompleted'] ?? 0) as int,
      'nursingEthicsCompleted': (snapshot.data()?['nursingEthicsCompleted'] ?? 0) as int,
      'nursingLawCompleted': (snapshot.data()?['nursingLawCompleted'] ?? 0) as int,
      'humanCharacteristicsCompleted': (snapshot.data()?['humanCharacteristicsCompleted'] ?? 0) as int,
      'lifeCycleCompleted': (snapshot.data()?['lifeCycleCompleted'] ?? 0) as int,
      'patientFamilyCompleted': (snapshot.data()?['patientFamilyCompleted'] ?? 0) as int,
      'nursingActivitiesCompleted': (snapshot.data()?['nursingActivitiesCompleted'] ?? 0) as int,
      'bodyStructureCompleted': (snapshot.data()?['bodyStructureCompleted'] ?? 0) as int,
      'symptomsDiseasesCompleted': (snapshot.data()?['symptomsDiseasesCompleted'] ?? 0) as int,
      'drugManagementCompleted': (snapshot.data()?['drugManagementCompleted'] ?? 0) as int,
      'dailyLifeAssistanceCompleted': (snapshot.data()?['dailyLifeAssistanceCompleted'] ?? 0) as int,
      'safetyComfortCompleted': (snapshot.data()?['safetyComfortCompleted'] ?? 0) as int,
      'nursingProceduresCompleted': (snapshot.data()?['nursingProceduresCompleted'] ?? 0) as int,
      'healthDefinitionCompleted': (snapshot.data()?['healthDefinitionCompleted'] ?? 0) as int,
    };

    print('Loaded progress in state: $progress');

    return progress;
  } else {
    return {};
  }
}


  // 進捗の保存
  Future<void> saveProgress(String category, int completedQuestions) async {
    if (_currentUser == null) return;
    await _firestore.collection('hissyuu_progress').doc(_currentUser!.uid).set(
      {category: completedQuestions},
      SetOptions(merge: true),
    );
    print('Saving progress: $category = $completedQuestions');
  }

  // 復習リストの取得
  Future<List<int>> getReviewList(String category) async {
    if (_currentUser == null) return [];
    DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore
        .collection('hissyuu_review_list')
        .doc(_currentUser!.uid)
        .get();

    if (snapshot.exists && snapshot.data() != null) {
      return List<int>.from(snapshot.data()![category] ?? []);
    } else {
      return [];
    }
  }

  // 復習リストに追加
  Future<void> addToReviewList(String category, int questionIndex) async {
    if (_currentUser == null) return;
    List<int> reviewList = await getReviewList(category);
    if (!reviewList.contains(questionIndex)) {
      reviewList.add(questionIndex);
      await _firestore.collection('hissyuu_review_list').doc(_currentUser!.uid).set(
        {category: reviewList},
        SetOptions(merge: true),
      );
    }
  }

  // 復習リストから削除
  Future<void> removeFromReviewList(String category, int questionIndex) async {
    if (_currentUser == null) return;
    List<int> reviewList = await getReviewList(category);
    if (reviewList.contains(questionIndex)) {
      reviewList.remove(questionIndex);
      await _firestore.collection('hissyuu_review_list').doc(_currentUser!.uid).set(
        {category: reviewList},
        SetOptions(merge: true),
      );
    }
  }
}
