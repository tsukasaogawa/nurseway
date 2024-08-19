import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RecommendedJobSitesPage extends StatelessWidget {
  RecommendedJobSitesPage({super.key});

  final List<Map<String, String>> jobSites = [
    {
      "name": "サイトA",
      "url": "https://sitea.com",
      "description": "医療専門職に最適な求人が豊富です。あなたのキャリアを次のレベルに引き上げるチャンスを見逃さないでください。",
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "サイトB",
      "url": "https://siteb.com",
      "description": "全国の医療従事者に信頼されるサイト。最新の求人情報を常に提供し、あなたに最適なポジションを見つけます。",
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "サイトC",
      "url": "https://sitec.com",
      "description": "一流の病院のトップ求人を提供。医療業界のエリートにふさわしい求人情報をお届けします。",
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "サイトD",
      "url": "https://sited.com",
      "description": "医療業界のエクスクルーシブな機会。特別なポジションをお探しなら、ここが最適です。",
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "サイトE",
      "url": "https://sitee.com",
      "description": "あなたの夢の医療職をここで見つけましょう。理想のキャリアを実現するための第一歩を踏み出しましょう。",
      "image": "https://via.placeholder.com/150"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'おすすめ転職サイト5選',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF2196F3),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF64B5F6), Color(0xFF2196F3), Color(0xFF1976D2)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: jobSites.length,
        itemBuilder: (context, index) {
          var site = jobSites[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    site["image"] ?? "https://via.placeholder.com/150",
                    width: double.infinity,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    site["name"] ?? "不明なサイト",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF1976D2),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    site["description"] ?? "説明が提供されていません。",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: const Icon(
                        Icons.open_in_new,
                        color: Color(0xFF1976D2),
                      ),
                      onPressed: () async {
                        if (await canLaunch(site["url"] ?? "")) {
                          await launch(site["url"] ?? "");
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('URLを開けませんでした'))
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
