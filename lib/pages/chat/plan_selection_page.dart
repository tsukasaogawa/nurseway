import 'package:flutter/material.dart';
import 'AI_usage_guide_page.dart';
import 'chat_page.dart';

class PlanSelectionPage extends StatefulWidget {
  @override
  PlanSelectionPageState createState() => PlanSelectionPageState();
}

class PlanSelectionPageState extends State<PlanSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI相談機能概要'),
        backgroundColor: Theme.of(context).canvasColor,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 16.0),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                SizedBox(height: 8.0),
                Text(
                  'chatGPTの搭載されたAI相談機能は優れた自然言語処理能力を持ち、高速かつ効率的に質問に回答します。',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'AIチャット機能を利用したい方は以下のボタンをクリックしてください。',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.red,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16.0),
          _buildAIUsageButton(),
          const SizedBox(height: 16.0),
          _buildChatButton(),
        ],
      ),
    );
  }

  Widget _buildAIUsageButton() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AIUsageGuidePage()),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          backgroundColor: Colors.teal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          elevation: 5.0,
          shadowColor: Colors.black54,
        ),
        child: const Text(
          'AI相談機能活用方法',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildChatButton() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatPage(selectedModel: 'gpt-3.5-turbo'),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          elevation: 5.0,
          shadowColor: Colors.black54,
        ),
        child: const Text(
          'AIチャット機能を利用する',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
