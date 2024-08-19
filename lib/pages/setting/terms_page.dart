import 'package:flutter/material.dart';
import 'terms_and_privacy/terms_of_service_text.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('利用規約'),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: .6,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          termsOfServiceText,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
