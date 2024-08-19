import 'package:flutter/material.dart';

class PsychiatricDiseasesPage extends StatelessWidget {
  const PsychiatricDiseasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('精神疾患'),
        backgroundColor: const Color(0xFFB3E5FC),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DiseaseCard(
              title: 'うつ病',
              causes: [
                '遺伝的要因',
                '環境要因',
                '心理的ストレス',
              ],
              symptoms: [
                '持続的な悲しみ',
                '興味喪失',
                '食欲変化',
                '睡眠障害',
              ],
              diagnosis: [
                '臨床評価',
                '心理テスト',
                '血液検査（他の疾患を除外）',
              ],
              care: [
                '抗うつ薬の投与：SSRIやSNRIを使用して症状を緩和します。',
                '心理療法：認知行動療法（CBT）や対人関係療法を行います。',
                '生活習慣の改善：定期的な運動、健康的な食事、睡眠の質を向上させます。',
                '支持療法：家族や友人からの支援を受けることを促します。',
              ],
              complications: [
                '自殺リスク：危険兆候の早期発見と適切な介入が重要です。',
                '社会的孤立：社会的支援と活動の継続が必要です。',
                '職業機能の低下：職場でのサポートと調整が必要です。',
              ],
              education: [
                '自己管理の重要性：症状のモニタリングと適切な対策を指導します。',
                '薬物療法の指導：服薬スケジュールの遵守、副作用の管理方法を説明します。',
                '生活習慣の改善：バランスの取れた食事、適度な運動、ストレス管理の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '統合失調症',
              causes: [
                '遺伝的要因',
                '環境要因',
                '脳の化学的不均衡',
              ],
              symptoms: [
                '幻覚',
                '妄想',
                '思考障害',
                '行動の異常',
              ],
              diagnosis: [
                '臨床評価',
                '心理テスト',
                '脳の画像検査',
              ],
              care: [
                '抗精神病薬の投与：リスペリドンやオランザピンを使用して症状を管理します。',
                '心理療法：個別療法やグループ療法を行います。',
                '生活習慣の改善：健康的な食事、運動、睡眠の質を向上させます。',
                '支持療法：家族や地域の支援を受けることを促します。',
              ],
              complications: [
                '社会的孤立：社会的支援と活動の継続が必要です。',
                '職業機能の低下：職場でのサポートと調整が必要です。',
                '自己傷害リスク：危険兆候の早期発見と適切な介入が重要です。',
              ],
              education: [
                '自己管理の重要性：症状のモニタリングと適切な対策を指導します。',
                '薬物療法の指導：服薬スケジュールの遵守、副作用の管理方法を説明します。',
                '生活習慣の改善：バランスの取れた食事、適度な運動、ストレス管理の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '不安障害',
              causes: [
                '遺伝的要因',
                '環境要因',
                'ストレス',
              ],
              symptoms: [
                '過度な不安',
                '心拍数増加',
                '発汗',
                '震え',
              ],
              diagnosis: [
                '臨床評価',
                '心理テスト',
                '血液検査（他の疾患を除外）',
              ],
              care: [
                '抗不安薬の投与：ベンゾジアゼピンやSSRIを使用して症状を管理します。',
                '心理療法：認知行動療法（CBT）やエクスポージャー療法を行います。',
                '生活習慣の改善：定期的な運動、健康的な食事、睡眠の質を向上させます。',
                '支持療法：家族や友人からの支援を受けることを促します。',
              ],
              complications: [
                '社会的孤立：社会的支援と活動の継続が必要です。',
                '職業機能の低下：職場でのサポートと調整が必要です。',
                '生活の質の低下：適切なケアと支援が重要です。',
              ],
              education: [
                '自己管理の重要性：症状のモニタリングと適切な対策を指導します。',
                '薬物療法の指導：服薬スケジュールの遵守、副作用の管理方法を説明します。',
                '生活習慣の改善：バランスの取れた食事、適度な運動、ストレス管理の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '認知症',
              causes: [
                'アルツハイマー病',
                '血管性認知症',
                'レビー小体型認知症',
              ],
              symptoms: [
                '記憶障害',
                '判断力の低下',
                '行動の変化',
                '言語障害',
              ],
              diagnosis: [
                '臨床評価',
                '心理テスト',
                '脳の画像検査',
              ],
              care: [
                '薬物療法：ドネペジルやメマンチンを使用して症状を緩和します。',
                '認知療法：認知機能を維持するための療法を行います。',
                '生活環境の調整：安全で支援的な環境を提供します。',
                '介護支援：家族や介護者への教育とサポートを提供します。',
              ],
              complications: [
                '生活の質の低下：適切なケアと支援が重要です。',
                '社会的孤立：社会的支援と活動の継続が必要です。',
                '介護負担の増加：介護者へのサポートと教育が必要です。',
              ],
              education: [
                '自己管理の重要性：認知症の進行を遅らせるためのケア方法を指導します。',
                '介護方法の指導：介護者に対する具体的なケア方法を説明します。',
                '生活習慣の改善：バランスの取れた食事、適度な運動、社会的活動の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '双極性障害',
              causes: [
                '遺伝的要因',
                '環境要因',
              ],
              symptoms: [
                '気分の高揚（躁状態）',
                '気分の落ち込み（うつ状態）',
                '過剰なエネルギー',
                '興奮や怒り',
              ],
              diagnosis: [
                '臨床評価',
                '心理テスト',
                '家族歴の評価',
              ],
              care: [
                '薬物療法：気分安定薬（リチウム）、抗うつ薬、抗精神病薬を使用します。',
                '心理療法：認知行動療法（CBT）や対人関係療法を行います。',
                '生活習慣の改善：規則正しい生活リズムを維持し、トリガーを避けます。',
                '支持療法：家族や地域の支援を受けることを促します。',
              ],
              complications: [
                '自殺リスク：危険兆候の早期発見と適切な介入が重要です。',
                '社会的孤立：社会的支援と活動の継続が必要です。',
                '職業機能の低下：職場でのサポートと調整が必要です。',
              ],
              education: [
                '自己管理の重要性：症状のモニタリングと適切な対策を指導します。',
                '薬物療法の指導：服薬スケジュールの遵守、副作用の管理方法を説明します。',
                '生活習慣の改善：バランスの取れた食事、適度な運動、ストレス管理の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '強迫性障害',
              causes: [
                '遺伝的要因',
                '環境要因',
                '脳の化学的不均衡',
              ],
              symptoms: [
                '強迫観念',
                '強迫行為',
                '不安感',
                '生活の質の低下',
              ],
              diagnosis: [
                '臨床評価',
                '心理テスト',
                '家族歴の評価',
              ],
              care: [
                '薬物療法：SSRIや抗不安薬を使用して症状を管理します。',
                '心理療法：認知行動療法（CBT）やエクスポージャー療法を行います。',
                '生活習慣の改善：定期的な運動、健康的な食事、睡眠の質を向上させます。',
                '支持療法：家族や友人からの支援を受けることを促します。',
              ],
              complications: [
                '社会的孤立：社会的支援と活動の継続が必要です。',
                '職業機能の低下：職場でのサポートと調整が必要です。',
                '生活の質の低下：適切なケアと支援が重要です。',
              ],
              education: [
                '自己管理の重要性：症状のモニタリングと適切な対策を指導します。',
                '薬物療法の指導：服薬スケジュールの遵守、副作用の管理方法を説明します。',
                '生活習慣の改善：バランスの取れた食事、適度な運動、ストレス管理の重要性を強調します。',
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DiseaseCard extends StatelessWidget {
  final String title;
  final List<String> causes;
  final List<String> symptoms;
  final List<String> diagnosis;
  final List<String> care;
  final List<String> complications;
  final List<String> education;

  const DiseaseCard({super.key,
    required this.title,
    required this.causes,
    required this.symptoms,
    required this.diagnosis,
    required this.care,
    required this.complications,
    required this.education,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            _buildSection('原因', causes),
            _buildSection('症状', symptoms),
            _buildSection('診断', diagnosis),
            _buildSection('看護ケア', care),
            _buildSection('合併症の予防', complications),
            _buildSection('教育とリハビリ', education),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String heading, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        for (var item in items) Text('• $item'),
        const SizedBox(height: 10),
      ],
    );
  }
}
