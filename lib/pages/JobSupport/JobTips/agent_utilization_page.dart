import 'package:flutter/material.dart';

class AgentUtilizationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('転職エージェントの活用方法'),
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
            '転職エージェントの活用方法',
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
            '2. 転職エージェントの役割',
            '3. エージェントの選び方',
            '4. 初回面談の準備',
            '5. 面談でのポイント',
            '6. エージェントとのコミュニケーション',
            '7. よくある質問と回答',
            '8. まとめ'
          ]),
          const SizedBox(height: 20),
          _buildSectionTitle('1. はじめに'),
          _buildSectionContent(
            '転職エージェントは、転職活動をサポートしてくれる専門家です。このガイドでは、プロのエージェントが教える転職エージェントの活用方法を詳しく解説します。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('2. 転職エージェントの役割'),
          _buildSectionContent(
            '転職エージェントは、以下のような役割を果たします。\n\n'
            '1. 求人情報の提供\n'
            '2. キャリア相談\n'
            '3. 履歴書や職務経歴書の添削\n'
            '4. 面接対策\n'
            '5. 内定後のフォローアップ\n\n'
            'これらのサポートを活用して、転職活動をスムーズに進めることができます。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('3. エージェントの選び方'),
          _buildSectionContent(
            '転職エージェントを選ぶ際には、以下のポイントを参考にしてください。\n\n'
            '1. 専門分野の確認：自分の業界や職種に詳しいエージェントを選びましょう。\n'
            '2. サポート内容の確認：提供されるサービス内容を確認し、自分に合ったエージェントを選びましょう。\n'
            '3. エージェントの評判：インターネットの口コミや友人・知人の紹介を参考に、信頼できるエージェントを選びましょう。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('4. 初回面談の準備'),
          _buildSectionContent(
            '初回面談では、自分の経歴や希望する職種について詳しく話すことが求められます。以下の準備をしておきましょう。\n\n'
            '1. 職務経歴書の準備\n'
            '2. 希望する職種や条件の整理\n'
            '3. 転職理由の明確化\n'
            '4. 質問事項の用意'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('5. 面談でのポイント'),
          _buildSectionContent(
            '面談では、以下のポイントに注意しましょう。\n\n'
            '1. 自分の強みやスキルをアピールする\n'
            '2. 正直に話す\n'
            '3. 積極的に質問する\n'
            '4. 転職の目的を明確にする'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('6. エージェントとのコミュニケーション'),
          _buildSectionContent(
            'エージェントとのコミュニケーションを円滑にするために、以下の点に気をつけましょう。\n\n'
            '1. 連絡を怠らない\n'
            '2. フィードバックを積極的に受け入れる\n'
            '3. 定期的に状況を報告する'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('7. よくある質問と回答'),
          _buildSectionContent(
            'Q: 転職エージェントを利用するメリットは何ですか？\n'
            'A: 転職エージェントを利用することで、求人情報の提供やキャリア相談、面接対策などのサポートを受けられます。\n\n'
            'Q: 複数のエージェントを利用しても良いですか？\n'
            'A: はい。複数のエージェントを利用することで、より多くの求人情報を得ることができます。\n\n'
            'Q: エージェントに希望を伝える際のポイントは？\n'
            'A: 自分の希望や条件を明確に伝えることが大切です。具体的な希望を伝えることで、エージェントも適切な求人を紹介しやすくなります。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('8. まとめ'),
          _buildSectionContent(
            '転職エージェントの活用方法を理解し、効果的にサポートを受けることで、転職活動を成功させましょう。このガイドを参考にして、エージェントとの関係を築き、理想の転職を実現してください。'
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
