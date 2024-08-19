import 'package:flutter/material.dart';

class AIUsageGuidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI相談機能活用方法'),
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
            'AI相談機能活用方法',
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
            '2. 基本的な使用方法',
            '3. 活用例',
            '4. よくある質問と回答',
            '5. まとめ'
          ]),
          const SizedBox(height: 20),
          _buildSectionTitle('1. はじめに'),
          _buildSectionContent(
            'AI相談機能は、あなたの質問や疑問に対してAIが適切な回答を提供する機能です。このガイドでは、AI相談機能の基本的な使用方法や活用例について詳しく説明します。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('2. 基本的な使用方法'),
          _buildSectionContent(
            'AI相談機能の使用方法は以下の通りです。\n\n'
            '1. プランを選択して、AI相談機能を利用できるモデルを確認します。\n'
            '2. チャット画面に移動し、質問を入力します。\n'
            '3. 送信ボタンを押して、AIからの回答を待ちます。\n'
            '4. 必要に応じて、追加の質問や詳細を入力します。\n\n'
            'これにより、AIがあなたの質問に対して最適な回答を提供します。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('3. 活用例'),
          _buildSectionContent(
            '日常の疑問解決：\n'
            '例えば、「この書類の書き方を教えてください」といった質問に対して、AIが具体的なアドバイスを提供します。\n\n'
            '専門的な相談：\n'
            '例えば、「この症状は何ですか？」といった質問に対して、AIが医学的な知識をもとに回答します。\n\n'
            '学習支援：\n'
            '例えば、「この数学の問題の解き方を教えてください」といった質問に対して、AIがステップバイステップで解説します。\n\n'
            '志望動機や自己PRの文章生成：\n'
            '例えば、「志望動機を書いてください」といった質問に対して、AIがあなたの情報を基にした最適な文章を生成します。\n\n'
            'ビジネスメールの文章生成：\n'
            '例えば、「取引先に送るビジネスメールを書いてください」といった質問に対して、AIが適切なビジネスマナーに則った文章を生成します。\n\n'
            'プロンプト設計の工夫：\n'
            '明確で詳細なプロンプト： 質問やリクエストが具体的で明確であるほど、正確な回答を得やすくなります。例として、「最新の医学的ガイドラインに基づいて〇〇について説明してください」のように指定します。\n\n'
            '制限付きのプロンプト： 誤情報を避けるために、広範な主題ではなく、具体的な内容にフォーカスした質問を使用する。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('4. よくある質問と回答'),
          _buildSectionContent(
            'Q: AI相談機能はどのようにして質問に答えるのですか？\n'
            'A: AI相談機能は、自然言語処理技術を使用して、入力された質問を理解し、最適な回答を生成します。\n\n'
            'Q: AI相談機能はどの程度正確ですか？\n'
            'A: AIの正確性は高いですが、必ずしもすべての質問に対して完璧な回答を提供できるわけではありません。疑問が残る場合は、専門家に相談してください。\n\n'
            'Q: AI相談機能の使用には料金がかかりますか？\n'
            'A: 使用するプランによって異なります。無料プランでは1日3回まで利用可能ですが、有料プランでは回数や時間の制限が緩和されます。'
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('5. まとめ'),
          _buildSectionContent(
            'AI相談機能は、日常の疑問から専門的な相談まで幅広く対応できる便利なツールです。このガイドを参考にして、AI相談機能を有効に活用してください。'
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
