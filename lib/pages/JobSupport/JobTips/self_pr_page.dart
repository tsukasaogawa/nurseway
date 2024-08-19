import 'package:flutter/material.dart';

class SelfPRPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('自己PRのポイント'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFC8E6C9), Color(0xFFA5D6A7), Color(0xFF81C784)],
              stops: [0.0, 0.5, 1.0],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            '自己PRのポイント',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.teal[800],
            ),
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('目次'),
          _buildTableOfContents([
            '1. はじめに',
            '2. 自己PRの重要性',
            '3. 自己PRの基本構成',
            '4. 効果的な自己PRの作り方',
            '5. よくある質問と回答',
            '6. まとめ'
          ]),
          const SizedBox(height: 20),
          _buildSectionTitle('1. はじめに'),
          _buildSectionContent(
            '自己PRは、あなたの強みや魅力を採用担当者に伝えるための重要な部分です。このガイドでは、プロのエージェントが教える自己PRのポイントを詳しく解説します。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('2. 自己PRの重要性'),
          _buildSectionContent(
            '自己PRは、あなたの個性や強みを企業にアピールするための重要な要素です。自己PRを効果的に行うことで、採用担当者に強い印象を与えることができます。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('3. 自己PRの基本構成'),
          _buildSectionContent(
            '自己PRは以下のような構成で書きます。\n\n'
            '1. 自己紹介\n'
            '2. 強みの説明\n'
            '3. 具体的なエピソード\n'
            '4. 志望動機との関連付け\n\n'
            '各項目について、次のセクションで詳しく解説します。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('4. 効果的な自己PRの作り方'),
          _buildSectionContent(
            '自己紹介：\n'
            'まずは簡潔に自己紹介を行います。名前や現在の職務、応募の目的などを述べます。\n\n'
            '強みの説明：\n'
            'あなたの強みを明確に説明します。どのようなスキルや特性があるかを具体的に示します。\n\n'
            '具体的なエピソード：\n'
            '強みを裏付ける具体的なエピソードを紹介します。過去の経験や実績を具体的に挙げ、説得力を持たせます。\n\n'
            '志望動機との関連付け：\n'
            '自己PRを志望動機と関連付けることで、一貫性を持たせます。あなたの強みがどのように応募先の企業で活かせるかを示します。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('5. よくある質問と回答'),
          _buildSectionContent(
            'Q: 自己PRにどれくらいの長さが適切ですか？\n'
            'A: 簡潔にまとめることが重要です。長すぎず、要点を明確にすることがポイントです。\n\n'
            'Q: 強みが思いつかない場合、どうすれば良いですか？\n'
            'A: 過去の経験や友人・同僚からのフィードバックを参考にすると良いでしょう。また、自己分析ツールを利用するのも一つの方法です。\n\n'
            'Q: 具体的なエピソードがない場合、どうすれば良いですか？\n'
            'A: 小さな成功体験や日常の業務の中での工夫など、些細なことでも具体的に説明することが大切です。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('6. まとめ'),
          _buildSectionContent(
            '自己PRは、あなたの強みや魅力を企業に伝えるための重要な要素です。このガイドを参考にして、効果的な自己PRを作成し、採用担当者に強い印象を与えましょう。'
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.teal[700],
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Text(
      content,
      style: const TextStyle(fontSize: 16, height: 1.5),
    );
  }

  Widget _buildTableOfContents(List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) => Text(item, style: const TextStyle(fontSize: 16, height: 1.5))).toList(),
    );
  }
}
