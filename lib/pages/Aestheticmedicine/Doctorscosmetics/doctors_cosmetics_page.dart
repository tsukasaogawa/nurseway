import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DoctorsCosmeticsPage(),
    );
  }
}

class DoctorsCosmeticsPage extends StatelessWidget {
  const DoctorsCosmeticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('おすすめドクターズコスメ'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title section
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'NurseWayおすすめの10選',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Image and caption
            Image.asset('assets/image1.jpg'), // Replace with your image path
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'ドクターズコスメで美肌を目指そう！',
                style: TextStyle(fontSize: 16),
              ),
            ),

            // Description and features section
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'ドクターズコスメの特徴とメリット',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '医師や研究開発者との専門家が関与し、医療的な観点から開発された信頼性の高い化粧品です。'
                '肌にやさしい成分が含まれており、敏感肌やトラブル肌にも適しています。'
                'また、エイジングケアや美白などの目的に応じて高い効果が期待できます。',
                style: TextStyle(fontSize: 14),
              ),
            ),
            // Image and description
            Image.asset('assets/image2.jpg'), // Replace with your image path
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'ブランド別にクチコミ評価★5以上の人気コスメを厳選',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '具体的な商品を見たい方には、以下の商品がおすすめです。'
                '高い評価を得ている商品だけを集めましたので、ぜひ参考にしてみてください。',
                style: TextStyle(fontSize: 14),
              ),
            ),
            // Image and caption
            Image.asset('assets/image3.jpg'), // Replace with your image path
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'ドクターケイ 12種類のビタミン配合！お肌のサプリメント',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '150ml 7,000円',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '12種類のビタミンを配合した美容液。'
                '肌のハリと透明感をサポートし、健康的な肌に導きます。',
                style: TextStyle(fontSize: 14),
              ),
            ),
            // Button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('商品を詳しく見る'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
