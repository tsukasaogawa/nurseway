import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'privacy_policy_text.dart';
import 'terms_of_service_text.dart';
import '../../../main.dart';

class TermsAndPrivacyDialog extends StatefulWidget {
  const TermsAndPrivacyDialog({Key? key}) : super(key: key);

  @override
  _TermsAndPrivacyDialogState createState() => _TermsAndPrivacyDialogState();
}

class _TermsAndPrivacyDialogState extends State<TermsAndPrivacyDialog> {
  bool _agreedToPrivacyPolicy = false;
  bool _agreedToTerms = false;

  Future<void> _saveAgreement() async {
    if (_agreedToPrivacyPolicy && _agreedToTerms) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('agreedToTerms', true);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainAppPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5), // 背景を半透明に
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    '利用規約とプライバシーポリシーを確認してください。',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'プライバシーポリシー',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 150, // スクロール領域の高さを設定
                    decoration: BoxDecoration(
                      color: Colors.white, // 背景を白に設定
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Scrollbar(
                      child: SingleChildScrollView(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          privacyPolicyText,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '利用規約',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 150, // スクロール領域の高さを設定
                    decoration: BoxDecoration(
                      color: Colors.white, // 背景を白に設定
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Scrollbar(
                      child: SingleChildScrollView(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          termsOfServiceText,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CheckboxListTile(
                    title: const Text('プライバシーポリシーに同意する'),
                    value: _agreedToPrivacyPolicy,
                    onChanged: (bool? value) {
                      setState(() {
                        _agreedToPrivacyPolicy = value ?? false;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('利用規約に同意する'),
                    value: _agreedToTerms,
                    onChanged: (bool? value) {
                      setState(() {
                        _agreedToTerms = value ?? false;
                      });
                    },
                  ),
                  ElevatedButton(
                    onPressed: _saveAgreement,
                    child: const Text('次へ'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: _agreedToPrivacyPolicy && _agreedToTerms ? Colors.blue : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
