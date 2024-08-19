import 'package:flutter/material.dart';

class ScheduleManagementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('転職活動のスケジュール管理'),
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
            '転職活動のスケジュール管理',
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
            '2. スケジュール管理の重要性',
            '3. 転職活動のステップ',
            '4. 各ステップの詳細',
            '5. よくある質問と回答',
            '6. まとめ'
          ]),
          const SizedBox(height: 20),
          _buildSectionTitle('1. はじめに'),
          _buildSectionContent(
            '転職活動を成功させるためには、計画的なスケジュール管理が重要です。このガイドでは、プロのエージェントが教える転職活動のスケジュール管理の方法を詳しく解説します。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('2. スケジュール管理の重要性'),
          _buildSectionContent(
            'スケジュール管理は、転職活動の効率を高めるために欠かせません。以下の理由から重要です。\n\n'
            '1. タイムマネジメントの向上\n'
            '2. ストレスの軽減\n'
            '3. 各ステップの明確化\n\n'
            '計画的にスケジュールを組むことで、転職活動をスムーズに進めることができます。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('3. 転職活動のステップ'),
          _buildSectionContent(
            '転職活動は以下のステップで進めます。\n\n'
            '1. 自己分析\n'
            '2. 求人情報の収集\n'
            '3. 履歴書・職務経歴書の作成\n'
            '4. 応募\n'
            '5. 面接準備\n'
            '6. 面接\n'
            '7. 内定・入社準備\n\n'
            '各ステップについて、次のセクションで詳しく解説します。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('4. 各ステップの詳細'),
          _buildSectionContent(
            '自己分析：\n'
            '自分の強みや価値観を明確にするために、自己分析を行います。\n\n'
            '求人情報の収集：\n'
            '自分に合った求人情報をインターネットやエージェントを通じて収集します。\n\n'
            '履歴書・職務経歴書の作成：\n'
            '応募する企業に合わせて、履歴書や職務経歴書を作成します。\n\n'
            '応募：\n'
            '応募書類を送付し、応募手続きを行います。\n\n'
            '面接準備：\n'
            '面接に向けて、企業研究や模擬面接を行います。\n\n'
            '面接：\n'
            '実際の面接に臨みます。準備した内容を活かして自己PRを行います。\n\n'
            '内定・入社準備：\n'
            '内定後、入社に向けた準備を行います。必要な書類や手続きを確認します。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('5. よくある質問と回答'),
          _buildSectionContent(
            'Q: 転職活動のスケジュールはどのくらいの期間で設定するべきですか？\n'
            'A: 一般的には3〜6ヶ月の期間を見込んでスケジュールを設定するのが良いでしょう。\n\n'
            'Q: スケジュール管理に役立つツールはありますか？\n'
            'A: Googleカレンダーやタスク管理アプリを活用すると便利です。\n\n'
            'Q: 面接の日程が重なった場合、どう対処すべきですか？\n'
            'A: 企業に事情を説明し、日程の変更を依頼することができます。柔軟に対応することが重要です。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('6. まとめ'),
          _buildSectionContent(
            '転職活動のスケジュール管理は、成功の鍵となる重要な要素です。このガイドを参考に、計画的にスケジュールを組み、効率的に転職活動を進めてください。'
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
