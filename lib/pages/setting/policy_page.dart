import 'package:flutter/material.dart';
import 'terms_and_privacy/privacy_policy_text.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('プライバシーポリシー'),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: .6,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          privacyPolicyText,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
