import 'package:flutter/material.dart';

class ResumeWritingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('履歴書の書き方'),
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
            '履歴書の書き方',
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
            '2. 基本的な書式',
            '3. 履歴書の構成',
            '4. 各項目の書き方',
            '5. よくある質問と回答',
            '6. まとめ'
          ]),
          const SizedBox(height: 20),
          _buildSectionTitle('1. はじめに'),
          _buildSectionContent(
            '履歴書は、あなたの職歴やスキルを採用担当者にアピールするための重要な書類です。このガイドでは、プロのエージェントが教える履歴書の書き方を詳しく解説します。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('2. 基本的な書式'),
          _buildSectionContent(
            '履歴書の基本的な書式は以下の通りです。\n\n'
            '1. フォントサイズ：10〜12ポイント\n'
            '2. 行間：1.5倍\n'
            '3. 用紙サイズ：A4\n'
            '4. ページ数：1〜2ページ\n\n'
            'これらの基本的な書式に従って書くことで、読みやすく整った履歴書を作成できます。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('3. 履歴書の構成'),
          _buildSectionContent(
            '履歴書は以下のような構成で書きます。\n\n'
            '1. 個人情報\n'
            '2. 学歴\n'
            '3. 職歴\n'
            '4. スキルと資格\n'
            '5. 自己PR\n'
            '6. 志望動機\n\n'
            '各項目について、次のセクションで詳しく解説します。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('4. 各項目の書き方'),
          _buildSectionContent(
            '個人情報：\n'
            '氏名、住所、電話番号、メールアドレスを記載します。\n\n'
            '学歴：\n'
            '学歴は最新のものから順に記載し、卒業年と学校名を具体的に書きます。\n\n'
            '職歴：\n'
            '職歴は最新のものから順に記載し、各職務での業務内容や実績を具体的に書きます。\n\n'
            'スキルと資格：\n'
            '職務に関連するスキルや資格を記載します。具体的なスキルや資格名を挙げることで、採用担当者にアピールできます。\n\n'
            '自己PR：\n'
            'これまでの経験やスキルを活かし、どのように貢献できるかを具体的に記載します。\n\n'
            '志望動機：\n'
            '志望する理由や、その企業でどのように働きたいかを記載します。企業の理念やビジョンに共感していることを伝えると効果的です。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('5. よくある質問と回答'),
          _buildSectionContent(
            'Q: 履歴書に書くべき学歴の数は？\n'
            'A: 高校卒業以降の学歴を記載するのが一般的です。\n\n'
            'Q: スキルの項目は具体的に書くべきですか？\n'
            'A: はい。具体的なスキルや資格名を挙げることで、採用担当者にアピールできます。\n\n'
            'Q: 履歴書のページ数はどれくらいが良いですか？\n'
            'A: 1〜2ページが適切です。それ以上になる場合は、重要な情報を絞って記載するようにしましょう。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('6. まとめ'),
          _buildSectionContent(
            '履歴書は、あなたの職歴やスキルをアピールするための重要な書類です。このガイドを参考にして、読みやすく整った履歴書を作成してください。'
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
