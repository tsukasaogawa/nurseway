import 'package:flutter/material.dart';
import 'Hissyuu/hissyuu_list_page.dart';
import 'HissyuuReviewListQuizPage.dart'; // Import the correct page

class AICategorySelectionPage extends StatelessWidget {
  final void Function(double progress) onUpdateProgress;

  const AICategorySelectionPage({super.key, required this.onUpdateProgress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('看護師国家試験対策'),
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              _buildCategoryButton(
                context,
                title: 'AI必修問題',
                page: HissyuuListPage(onUpdateProgress: onUpdateProgress),
                height: 110,
              ),
              const SizedBox(height: 20),
              _buildCategoryButton(
                context,
                title: '復習問題リスト',
                page: const HissyuuReviewListQuizPage(), // Navigate to HissyuuReviewListQuizPage
                height: 55,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryButton(BuildContext context, {required String title, required Widget page, required double height}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      height: height,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)],
          stops: [0.0, 0.66, 1.0],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          minimumSize: const Size(double.infinity, 60),
          padding: const EdgeInsets.symmetric(vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          textStyle: const TextStyle(fontSize: 18),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          title,
          style: const TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}
