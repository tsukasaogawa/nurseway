import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart'; // 広告パッケージのインポート

class ProgressService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final User? _currentUser = FirebaseAuth.instance.currentUser;
  InterstitialAd? _interstitialAd;
  int _questionsAnswered = 0; // 回答された質問数を追跡

  ProgressService() {
    _loadInterstitialAd(); // 初期化時に広告をロード
  }

  // 広告をロードするメソッド
  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: 'ca-app-pub-3940256099942544/4411468910', // iOS用テストインタースティシャル広告ユニットID
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          _interstitialAd = ad;
          print('InterstitialAd loaded successfully.');
        },
        onAdFailedToLoad: (LoadAdError error) {
          print('InterstitialAd failed to load: $error');
          _interstitialAd = null;
        },
      ),
    );
  }

  // 広告を表示するメソッド
  void _showInterstitialAd() {
    if (_interstitialAd != null) {
      _interstitialAd!.show();
      _interstitialAd = null; // 再度ロードするために広告をクリア
      _loadInterstitialAd(); // 次回のために広告を再度ロード
    } else {
      print('Interstitial ad is not ready yet.');
    }
  }

  Future<Map<String, int>> loadProgress() async {
    if (_currentUser == null) return {};
    DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore
        .collection('progress')
        .doc(_currentUser!.uid)
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
        .doc(_currentUser!.uid)
        .get();

    if (snapshot.exists) {
      return snapshot.data()?[category] ?? 0;
    } else {
      return 0;
    }
  }

  Future<void> saveProgress(String category, int completedQuestions) async {
    if (_currentUser == null) return;
    await _firestore.collection('progress').doc(_currentUser!.uid).set(
      {category: completedQuestions},
      SetOptions(merge: true),
    );
    print('Saving progress: $category = $completedQuestions');

    // 進捗が保存されるたびに、回答数をカウント
    _questionsAnswered++;

    // 8問以上解いた場合に広告を表示
    if (_questionsAnswered > 8) {
      _showInterstitialAd();
      _questionsAnswered = 0; // カウンターをリセット
    }
  }

  Future<List<int>> getReviewList(String category) async {
    if (_currentUser == null) return [];
    DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore
        .collection('reviewList')
        .doc(_currentUser!.uid)
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
      await _firestore.collection('reviewList').doc(_currentUser!.uid).set(
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
      await _firestore.collection('reviewList').doc(_currentUser!.uid).set(
        {category: reviewList},
        SetOptions(merge: true),
      );
    }
  }
}
