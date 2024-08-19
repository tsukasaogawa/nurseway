import 'package:flutter/material.dart';

class AfterJoiningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('入社後の心構え'),
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
            '入社後の心構え',
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
            '2. 新しい環境への適応',
            '3. チームとの協力',
            '4. 自己管理と時間管理',
            '5. スキルアップと学習意欲',
            '6. よくある質問と回答',
            '7. まとめ'
          ]),
          const SizedBox(height: 20),
          _buildSectionTitle('1. はじめに'),
          _buildSectionContent(
            '入社後の心構えは、新しい職場での成功に欠かせません。このガイドでは、プロのエージェントが教える入社後の心構えについて詳しく解説します。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('2. 新しい環境への適応'),
          _buildSectionContent(
            '新しい職場に慣れるためには、環境に適応する柔軟性が重要です。以下のポイントに注意しましょう。\n\n'
            '1. 職場の文化を理解する\n'
            '2. コミュニケーションを積極的に行う\n'
            '3. 自己紹介を丁寧に行う'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('3. チームとの協力'),
          _buildSectionContent(
            '職場ではチームワークが求められます。以下のポイントを意識して、チームとの協力を深めましょう。\n\n'
            '1. チームメンバーとの信頼関係を築く\n'
            '2. 助け合いの精神を持つ\n'
            '3. フィードバックを積極的に受け入れる'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('4. 自己管理と時間管理'),
          _buildSectionContent(
            '効果的な自己管理と時間管理は、仕事の効率を高めるために必要です。以下のポイントを参考にしてください。\n\n'
            '1. スケジュールを立てる\n'
            '2. 優先順位をつける\n'
            '3. デッドラインを守る'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('5. スキルアップと学習意欲'),
          _buildSectionContent(
            '継続的な学習とスキルアップは、キャリアの成長に欠かせません。以下の方法で学習意欲を保ちましょう。\n\n'
            '1. 業務に関連する知識を学ぶ\n'
            '2. セミナーや研修に参加する\n'
            '3. 新しい技術を積極的に取り入れる'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('6. よくある質問と回答'),
          _buildSectionContent(
            'Q: 新しい職場での最初の印象を良くするためには？\n'
            'A: 笑顔で挨拶し、積極的にコミュニケーションを取ることが大切です。\n\n'
            'Q: 職場の文化に慣れるためのコツは？\n'
            'A: 周囲の人々の行動を観察し、質問することで理解を深めましょう。\n\n'
            'Q: 自己管理が苦手な場合はどうすれば良いですか？\n'
            'A: タスクを細分化し、少しずつ取り組むことで管理しやすくなります。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('7. まとめ'),
          _buildSectionContent(
            '入社後の心構えは、新しい職場での成功に直結します。このガイドを参考に、柔軟性を持ち、チームとの協力を大切にし、継続的な学習を心がけましょう。'
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
