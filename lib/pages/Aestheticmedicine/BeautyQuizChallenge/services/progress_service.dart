import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProgressService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final User? _currentUser = FirebaseAuth.instance.currentUser;

  Future<Map<String, int>> loadProgress() async {
    if (_currentUser == null) return {};
    DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore
        .collection('progress')
        .doc(_currentUser.uid)
        .get();

    if (snapshot.exists) {
      return {
        'cosmeticSurgeryCompleted': snapshot.data()?['cosmeticSurgeryCompleted'] ?? 0,
        'dermatologyCompleted': snapshot.data()?['dermatologyCompleted'] ?? 0,
        'otherMedicalAestheticsCompleted': snapshot.data()?['otherMedicalAestheticsCompleted'] ?? 0,
      };
    } else {
      return {
        'cosmeticSurgeryCompleted': 0,
        'dermatologyCompleted': 0,
        'otherMedicalAestheticsCompleted': 0,
      };
    }
  }

  Future<int> loadProgressByCategory(String category) async {
    if (_currentUser == null) return 0;
    DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore
        .collection('progress')
        .doc(_currentUser.uid)
        .get();

    if (snapshot.exists) {
      return snapshot.data()?[category] ?? 0;
    } else {
      return 0;
    }
  }

  Future<void> saveProgress(String category, int completedQuestions) async {
    if (_currentUser == null) return;
    await _firestore.collection('progress').doc(_currentUser.uid).set(
      {category: completedQuestions},
      SetOptions(merge: true),
    );
    print('Saving progress: $category = $completedQuestions');
  }

  Future<List<int>> getReviewList(String category) async {
    if (_currentUser == null) return [];
    DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore
        .collection('reviewList')
        .doc(_currentUser.uid)
        .get();

    if (snapshot.exists && snapshot.data() != null) {
      return List<int>.from(snapshot.data()![category] ?? []);
    } else {
      return [];
    }
  }

  Future<void> addToReviewList(String category, int questionIndex) async {
    if (_currentUser == null) return;
    List<int> reviewList = await getReviewList(category);
    if (!reviewList.contains(questionIndex)) {
      reviewList.add(questionIndex);
      await _firestore.collection('reviewList').doc(_currentUser.uid).set(
        {category: reviewList},
        SetOptions(merge: true),
      );
    }
  }

  Future<void> removeFromReviewList(String category, int questionIndex) async {
    if (_currentUser == null) return;
    List<int> reviewList = await getReviewList(category);
    if (reviewList.contains(questionIndex)) {
      reviewList.remove(questionIndex);
      await _firestore.collection('reviewList').doc(_currentUser.uid).set(
        {category: reviewList},
        SetOptions(merge: true),
      );
    }
  }
}
