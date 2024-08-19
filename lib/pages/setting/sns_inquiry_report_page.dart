import 'package:flutter/material.dart';

class SNSInquiryReportPage extends StatelessWidget {
  const SNSInquiryReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('問い合わせ報告'),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: .6,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'エージェント様による個人SNSアカウントの問い合わせに関する報告',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              '注意事項:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'エージェント様がアプリ以外での連絡を取ることは禁止されています。'
                  'また、SNSアカウントを尋ねる行為も禁止されています。'
                  'ユーザーのプライバシー保護のため、違反行為が発覚した場合は直ちに報告してください。',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              '報告内容',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.all(8.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'エージェント名',
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.all(8.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: '問い合わせ内容',
                  hintText: 'SNSアカウントに関する問い合わせ内容を記入してください。',
                ),
                maxLines: 5,
              ),
            ),
            const SizedBox(height: 16),

            const SizedBox(height: 16),

            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // 報告内容を送信する処理
                },
                child: const Text('送信'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
