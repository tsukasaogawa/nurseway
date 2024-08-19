import 'package:flutter/material.dart';

class AppInfoPage extends StatelessWidget {
  const AppInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('アプリ情報'),  // "const" removed here because of localization
        backgroundColor: Theme.of(context).canvasColor,
        elevation: .6,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'バージョン情報',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Ver.1.0.0',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                '開発者情報',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '小川 司',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'アップデート情報',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'なし',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 40),
              Text(
                '出典情報',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '厚生労働省ホームページ（https://www.mhlw.go.jp/index.html）',
                style: TextStyle(fontSize: 18, color: Colors.blue, decoration: TextDecoration.underline),
              ),
              SizedBox(height: 20),
              Text(
                '利用開始日',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '2024年4月15日',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
