import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class AssessmentToolsPage extends StatelessWidget {
  final List<Article> articles = [
    Article(
      title: 'SOAPとは何か？',
      content: 'SOAPは、医療や看護の分野で広く用いられている問題解決のための文書化方法です。'
          'SOAPは、Subjective（主観的情報）、Objective（客観的情報）、Assessment（評価）、'
          'Plan（計画）の4つの要素で構成されています。この方法は、患者の症状や状態を体系的に記録し、'
          '評価し、適切な治療計画を立てるために使用されます。\n\n'

          'Subjective（主観的情報）:\n'
          '患者やその家族から収集される情報です。患者の訴えや感じている症状、'
          '病歴などが含まれます。たとえば、「患者は頭痛があり、めまいがすると訴えています。」'
          'といった情報です。\n\n'

          'Objective（客観的情報）:\n'
          '医療提供者が直接観察し、測定できる情報です。身体検査の結果や検査データ、'
          'バイタルサインなどが含まれます。たとえば、「血圧は120/80mmHg、体温は36.5℃です。」'
          'といった情報です。\n\n'

          'Assessment（評価）:\n'
          '主観的情報と客観的情報を基に、患者の問題点や診断を評価します。'
          'これは、医療提供者が専門的な知識と経験をもとに行います。たとえば、'
          '「頭痛とめまいは、脱水症状が原因である可能性があります。」といった評価です。\n\n'

          'Plan（計画）:\n'
          '評価に基づいて、患者の治療計画を立てます。これは、治療の方針や具体的な介入方法、'
          'フォローアップの計画などが含まれます。たとえば、「患者に水分補給を促し、'
          '必要に応じて点滴を行います。次回の診察は3日後です。」といった計画です。',
    ),
    Article(
      title: '事例を用いたSOAPの各要素（肺炎）',
      content: '事例：68歳の男性患者が肺炎の診断を受け、入院中。\n\n'
          'Subjective（主観的情報）:\n'
          '患者は「咳がひどく、痰が黄色い。息切れがして、胸が痛む」と訴えています。また、「食欲がなく、'
          '夜も眠れない」とも話しています。\n\n'

          'Objective（客観的情報）:\n'
          'バイタルサイン: 体温38.2℃、脈拍110回/分、血圧130/85mmHg、酸素飽和度90%\n'
          '身体所見: 胸部の聴診で両側に湿性ラ音を聴取。呼吸数は22回/分。\n'
          '検査結果: 胸部X線検査で両側下肺野に浸潤影を認める。CRP高値、白血球増加。\n\n'

          'Assessment（評価）:\n'
          '患者の主観的情報と客観的情報を総合的に評価すると、肺炎の進行による呼吸困難と'
          '体力低下が見られる。また、発熱と痰の色から細菌性肺炎が強く疑われる。\n\n'

          'Plan（計画）:\n'
          '1. 排痰を促す介入: 患者に体位ドレナージを指導し、必要に応じて吸引を行う。呼吸リハビリテーションの一環として、'
          '深呼吸と咳嗽訓練を行う。\n'
          '2. 水分・栄養管理: 十分な水分補給を行い、食欲不振に対して高カロリー・高タンパク質の食事を提供。\n'
          '3. 体位管理: 呼吸を楽にするために、ベッドの頭部を30度挙上。\n'
          '4. フォローアップ: 48時間後に再評価を行い、症状の改善と治療効果を確認。必要に応じて治療計画を見直す。\n'
          '5. 教育・指導: 患者と家族に対して、感染予防のための手洗いや咳エチケットの徹底を指導。また、'
          '退院後の生活指導として、禁煙の重要性と定期的な検診の必要性を説明。',
    ),
    Article(
      title: 'SOAPを書くコツ',
      content: '1. 主観的情報と客観的情報を明確に区別する。\n'
          '主観的情報は患者や家族から得られる主観的な訴えであり、客観的情報は医療者が観察や検査で得た客観的なデータです。'
          '両者を混同しないように記録します。\n\n'
          '2. 客観的情報は具体的な数値や所見を記載する。\n'
          '例えば、バイタルサインや検査結果、身体所見などは具体的な数値や所見を詳細に記録します。\n\n'
          '3. 評価（Assessment）は情報を統合して論理的に行う。\n'
          '主観的情報と客観的情報を基に、患者の問題点や診断を明確にし、治療や看護の優先順位を決定します。\n\n'
          '4. 計画（Plan）は具体的で実行可能な内容にする。\n'
          '治療や看護の計画は、具体的で実行可能な内容にします。各計画の目的、具体的な介入方法、フォローアップのタイミングを明示します。\n\n'
          '5. 記録は簡潔かつ明瞭に。\n'
          'SOAP記録は他の医療従事者と共有するため、簡潔で明瞭な文章で記録します。曖昧な表現は避け、客観的かつ具体的な表現を心がけます。',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('アセスメントについて'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: articles.map((article) => ArticleWidget(article: article)).toList(),
        ),
      ),
    );
  }
}

class Article {
  final String title;
  final String content;

  Article({
    required this.title,
    required this.content,
  });
}

class ArticleWidget extends StatelessWidget {
  final Article article;

  const ArticleWidget({required this.article});

  List<InlineSpan> _buildSpans(String content) {
    final List<InlineSpan> spans = [];
    final lines = content.split('\n');
    const normalStyle = TextStyle(fontSize: 16, color: Colors.black);

    for (var line in lines) {
      spans.add(TextSpan(text: '$line\n', style: normalStyle));
    }

    return spans;
  }

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedBuilder: (context, openContainer) {
        return GestureDetector(
          onTap: openContainer,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    article.title,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                const Icon(
                  Icons.expand_more,
                ),
              ],
            ),
          ),
        );
      },
      openBuilder: (context, closeContainer) {
        return Scaffold(
          appBar: AppBar(
            title: Text(article.title),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF81D4FA), Color(0xFF0288D1)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: closeContainer,
            ),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black), // Default text style
                children: _buildSpans(article.content),
              ),
            ),
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 500),
      closedElevation: 0.0,
      closedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      openElevation: 4.0,
      openShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      transitionType: ContainerTransitionType.fadeThrough,
    );
  }
}

void main() {
  runApp(MaterialApp(home: AssessmentToolsPage()));
}
