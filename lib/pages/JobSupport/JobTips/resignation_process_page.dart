import 'package:flutter/material.dart';

class ResignationProcessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('退職手続きの流れ'),
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
            '退職手続きの流れ',
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
            '2. 退職の意思表示',
            '3. 引き継ぎの準備',
            '4. 退職日の決定',
            '5. 退職手続きの完了',
            '6. まとめ'
          ]),
          const SizedBox(height: 20),
          _buildSectionTitle('1. はじめに'),
          _buildSectionContent(
            '退職手続きは、スムーズに進めるために計画的に行うことが重要です。このガイドでは、プロのエージェントが教える退職手続きの流れを詳しく解説します。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('2. 退職の意思表示'),
          _buildSectionContent(
            '退職の意思を会社に伝える際のポイントを以下に示します。\n\n'
            '1. 退職の意思は上司に直接伝える\n'
            '2. 退職理由を明確にする\n'
            '3. 退職の意思を伝えるタイミングを考慮する\n\n'
            'これらのポイントに注意し、円満に退職の意思を伝えることが大切です。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('3. 引き継ぎの準備'),
          _buildSectionContent(
            '引き継ぎの準備を計画的に行いましょう。以下のステップで引き継ぎを進めます。\n\n'
            '1. 業務内容をリストアップする\n'
            '2. 引き継ぎ資料を作成する\n'
            '3. 後任者に直接引き継ぎを行う\n\n'
            'スムーズな引き継ぎができるよう、事前に準備を整えましょう。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('4. 退職日の決定'),
          _buildSectionContent(
            '退職日は会社と相談の上、決定します。以下の点を考慮して退職日を決定しましょう。\n\n'
            '1. 引き継ぎの完了状況\n'
            '2. 会社の繁忙期やプロジェクトの状況\n'
            '3. 法定の退職通知期間（一般的には1ヶ月前）\n\n'
            '円満に退職するためには、会社の状況を考慮して退職日を設定することが重要です。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('5. 退職手続きの完了'),
          _buildSectionContent(
            '退職手続きの完了には以下のステップが含まれます。\n\n'
            '1. 退職願や退職届の提出\n'
            '2. 会社からの離職票や源泉徴収票の受領\n'
            '3. 会社の備品や資料の返却\n\n'
            'これらの手続きを完了することで、正式に退職が完了します。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('6. まとめ'),
          _buildSectionContent(
            '退職手続きは、計画的に行うことでスムーズに進めることができます。このガイドを参考にして、円満な退職を目指しましょう。'
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
