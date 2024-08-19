import 'package:flutter/material.dart';

class JobSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('転職先の選び方'),
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
            '転職先の選び方',
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
            '2. 自己分析',
            '3. 企業分析',
            '4. 職務内容の確認',
            '5. 企業文化の理解',
            '6. まとめ'
          ]),
          const SizedBox(height: 20),
          _buildSectionTitle('1. はじめに'),
          _buildSectionContent(
            '転職先の選び方は、キャリアの重要な転換点となるプロセスです。このガイドでは、プロのエージェントが教える転職先の選び方を詳しく解説します。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('2. 自己分析'),
          _buildSectionContent(
            '自己分析は、転職先を選ぶ上で最も重要なステップです。以下のポイントに注意して自己分析を行いましょう。\n\n'
            '1. 自分の強みと弱みを明確にする\n'
            '2. 自分の価値観や働き方のスタイルを理解する\n'
            '3. キャリアゴールを設定する\n\n'
            'これらを明確にすることで、自分に合った転職先を見つけやすくなります。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('3. 企業分析'),
          _buildSectionContent(
            '企業分析は、転職先を選ぶ際の重要なプロセスです。以下の方法で企業分析を行いましょう。\n\n'
            '1. 企業のビジョンやミッションを理解する\n'
            '2. 財務状況や成長性を調査する\n'
            '3. 企業の競合他社との比較を行う\n\n'
            '企業の情報を収集し、自分に合った企業を見極めることが大切です。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('4. 職務内容の確認'),
          _buildSectionContent(
            '転職先での職務内容をしっかりと確認しましょう。以下のポイントに注意して確認を行います。\n\n'
            '1. 具体的な業務内容を確認する\n'
            '2. 期待されるスキルや経験を理解する\n'
            '3. キャリアパスや昇進の機会について質問する\n\n'
            'これにより、自分がその職務でどのように貢献できるかを明確にすることができます。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('5. 企業文化の理解'),
          _buildSectionContent(
            '企業文化は、働く上での満足度に大きく影響します。以下の方法で企業文化を理解しましょう。\n\n'
            '1. 社内の雰囲気を調査する\n'
            '2. 社員の口コミや評価を確認する\n'
            '3. 面接で企業文化について質問する\n\n'
            '企業文化が自分に合っているかを確認することが重要です。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('6. まとめ'),
          _buildSectionContent(
            '転職先の選び方は、自分のキャリアに大きな影響を与えます。このガイドを参考にして、慎重に転職先を選び、自分に最適なキャリアを築いてください。'
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
