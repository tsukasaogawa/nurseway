import 'package:flutter/material.dart';

class InterviewPreparationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('面接の準備'),
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
            '面接の準備',
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
            '2. 面接の基本マナー',
            '3. 事前準備',
            '4. 面接の流れ',
            '5. 面接での質問対策',
            '6. よくある質問と回答',
            '7. まとめ'
          ]),
          const SizedBox(height: 20),
          _buildSectionTitle('1. はじめに'),
          _buildSectionContent(
            '面接は、採用担当者に自分をアピールする重要な場です。このガイドでは、プロのエージェントが教える面接の準備方法を詳しく解説します。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('2. 面接の基本マナー'),
          _buildSectionContent(
            '面接では、以下の基本マナーを守ることが重要です。\n\n'
            '1. 時間厳守\n'
            '2. 適切な服装\n'
            '3. 礼儀正しい態度\n'
            '4. 笑顔とアイコンタクト\n\n'
            'これらの基本マナーを守ることで、好印象を与えることができます。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('3. 事前準備'),
          _buildSectionContent(
            '面接の前には、以下の準備を行いましょう。\n\n'
            '1. 会社の情報を調べる\n'
            '2. 応募したポジションの仕事内容を確認する\n'
            '3. 自己紹介や職務経歴の要点をまとめる\n'
            '4. 質問リストを作成する'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('4. 面接の流れ'),
          _buildSectionContent(
            '面接の一般的な流れは以下の通りです。\n\n'
            '1. 入室と挨拶\n'
            '2. 自己紹介\n'
            '3. 質疑応答\n'
            '4. 終了の挨拶\n\n'
            '各ステップについて、事前にシミュレーションしておくと良いでしょう。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('5. 面接での質問対策'),
          _buildSectionContent(
            '面接では、以下のような質問がよく出されます。事前に対策を立てておきましょう。\n\n'
            '自己紹介\n'
            '例：「簡単に自己紹介をお願いします。」\n\n'
            '職務経歴について\n'
            '例：「前職ではどのような業務を担当していましたか？」\n\n'
            '強みと弱み\n'
            '例：「あなたの強みと弱みを教えてください。」\n\n'
            '志望動機\n'
            '例：「なぜこの会社を志望したのですか？」\n\n'
            '将来のキャリアプラン\n'
            '例：「将来のキャリアプランを教えてください。」\n\n'
            'その他の質問\n'
            '例：「チームでの仕事と個人での仕事、どちらが得意ですか？」\n'
            '例：「リーダーシップを発揮した経験について教えてください。」\n'
            '例：「仕事で困難に直面したとき、どのように対処しましたか？」\n'
            '例：「現在のスキルセットについてどのように評価していますか？」\n'
            '例：「当社の製品やサービスについてのご意見をお聞かせください。」\n'
            '例：「あなたが今までに達成した最大の成果は何ですか？」\n'
            '例：「新しい技術や知識をどのように学んでいますか？」\n'
            '例：「どのような環境で働くと最も生産性が上がりますか？」\n'
            '例：「ストレスやプレッシャーに対処する方法を教えてください。」\n'
            '例：「あなたの働き方や価値観に影響を与えた人物や出来事は何ですか？」\n\n'
            'これらの質問に対する回答を準備しておくことで、スムーズに答えることができます。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('6. よくある質問と回答'),
          _buildSectionContent(
            'Q: 面接で緊張しない方法は？\n'
            'A: 深呼吸をしてリラックスすること。事前に練習を重ね、自信を持つことが大切です。\n\n'
            'Q: 面接での自己紹介のポイントは？\n'
            'A: 簡潔に、要点を押さえて話すこと。具体的な実績やエピソードを交えて話すと良いです。\n\n'
            'Q: 面接での服装は？\n'
            'A: 会社の雰囲気に合わせた適切な服装を選びましょう。一般的にはビジネスカジュアルが無難です。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('7. まとめ'),
          _buildSectionContent(
            '面接の準備をしっかり行うことで、自信を持って面接に臨むことができます。このガイドを参考にして、効果的な面接準備を行い、採用を勝ち取りましょう。'
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
