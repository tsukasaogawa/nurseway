import 'package:flutter/material.dart';

class UrologicalDiseasesPage extends StatelessWidget {
  const UrologicalDiseasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('泌尿器疾患'),
        backgroundColor: const Color(0xFFB3E5FC),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DiseaseCard(
              title: '尿路感染症（UTI）',
              causes: [
                '細菌感染（大腸菌が主な原因）',
                '尿道閉塞',
                '性行為',
                '不適切な排尿習慣',
              ],
              symptoms: [
                '頻尿',
                '排尿痛',
                '血尿',
                '腹痛',
              ],
              diagnosis: [
                '尿検査',
                '尿培養',
                '超音波検査',
                '膀胱鏡検査',
              ],
              care: [
                '抗生物質の投与：感染の根治を目指し、適切な抗生物質を使用します。',
                '水分摂取の促進：水分を多く摂ることで、細菌の排出を促進します。',
                '排尿習慣の指導：定期的な排尿を促し、膀胱の完全な空にすることを指導します。',
                '痛み管理：鎮痛薬の使用や温湿布の適用を行います。',
              ],
              complications: [
                '腎盂腎炎：早期発見と治療が重要です。',
                '敗血症：全身感染の予防と治療が必要です。',
                '再発性感染：予防策の徹底が必要です。',
              ],
              education: [
                '予防策の指導：適切な衛生管理と排尿習慣を教えます。',
                '適切な排尿習慣の重要性：排尿のタイミングと方法について説明します。',
                '抗生物質の適正使用：服薬指導と副作用の管理方法を説明します。',
              ],
            ),
            DiseaseCard(
              title: '腎不全（急性および慢性）',
              causes: [
                '糖尿病',
                '高血圧',
                '糸球体腎炎',
                '多発性嚢胞腎',
              ],
              symptoms: [
                '乏尿または無尿',
                '疲労感',
                'むくみ',
                '食欲不振',
              ],
              diagnosis: [
                '血液検査（クレアチニン、BUN）',
                '尿検査',
                '超音波検査',
                '腎生検',
              ],
              care: [
                '透析療法：血液透析や腹膜透析を行い、老廃物を除去します。',
                '薬物療法：降圧薬や利尿薬を使用し、症状を管理します。',
                '食事療法：低タンパク・低塩分食を提供し、腎機能を維持します。',
                '水分管理：適切な水分摂取量を指導し、バランスを保ちます。',
              ],
              complications: [
                '心不全：適切な心機能のモニタリングと管理が必要です。',
                '高血圧：降圧薬の使用と生活習慣の改善が重要です。',
                '電解質異常：血液検査での定期的なモニタリングが必要です。',
              ],
              education: [
                '自己管理の重要性：透析や薬物療法の重要性を強調します。',
                '透析の理解と適応：透析の手順と効果について説明します。',
                '生活習慣の改善：バランスの取れた食事と適度な運動を指導します。',
              ],
            ),
            DiseaseCard(
              title: '前立腺肥大症',
              causes: [
                '加齢',
                'ホルモン変化',
                '遺伝的要因',
              ],
              symptoms: [
                '頻尿',
                '夜間頻尿',
                '排尿困難',
                '残尿感',
              ],
              diagnosis: [
                '直腸指診',
                'PSA検査',
                '超音波検査',
                '尿流動態検査',
              ],
              care: [
                '薬物療法：α遮断薬や5α還元酵素阻害薬を使用して症状を緩和します。',
                '手術療法：TURP（経尿道的前立腺切除術）を行い、前立腺の肥大部分を除去します。',
                '生活習慣の指導：排尿パターンの調整や水分摂取の指導を行います。',
                '定期的なフォローアップ：PSA値や症状のモニタリングを行います。',
              ],
              complications: [
                '尿路感染症：適切な感染予防策が必要です。',
                '膀胱結石：早期発見と治療が重要です。',
                '急性尿閉：緊急対応が必要です。',
              ],
              education: [
                '症状管理の重要性：排尿パターンの観察と記録を指導します。',
                '治療選択肢の理解：薬物療法と手術療法の利点とリスクを説明します。',
                '生活習慣の改善：適切な水分摂取と排尿習慣の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '膀胱炎',
              causes: [
                '細菌感染（主に大腸菌）',
                '性行為',
                '尿道閉塞',
                '不適切な排尿習慣',
              ],
              symptoms: [
                '頻尿',
                '排尿痛',
                '血尿',
                '下腹部痛',
              ],
              diagnosis: [
                '尿検査',
                '尿培養',
                '膀胱鏡検査',
                '超音波検査',
              ],
              care: [
                '抗生物質の投与：感染の根治を目指し、適切な抗生物質を使用します。',
                '水分摂取の促進：水分を多く摂ることで、細菌の排出を促進します。',
                '排尿習慣の指導：定期的な排尿を促し、膀胱の完全な空にすることを指導します。',
                '痛み管理：鎮痛薬の使用や温湿布の適用を行います。',
              ],
              complications: [
                '腎盂腎炎：早期発見と治療が重要です。',
                '敗血症：全身感染の予防と治療が必要です。',
                '再発性感染：予防策の徹底が必要です。',
              ],
              education: [
                '予防策の指導：適切な衛生管理と排尿習慣を教えます。',
                '適切な排尿習慣の重要性：排尿のタイミングと方法について説明します。',
                '抗生物質の適正使用：服薬指導と副作用の管理方法を説明します。',
              ],
            ),
            DiseaseCard(
              title: '腎結石',
              causes: [
                '脱水',
                '高塩分・高タンパク食',
                '遺伝的要因',
                '代謝異常',
              ],
              symptoms: [
                '側腹部痛',
                '血尿',
                '排尿困難',
                '悪心・嘔吐',
              ],
              diagnosis: [
                'CTスキャン',
                '超音波検査',
                '尿検査',
                '血液検査',
              ],
              care: [
                '水分摂取の促進：尿量を増やして結石の排出を促します。',
                '鎮痛薬の投与：痛みを緩和します。',
                '体外衝撃波結石破砕術（ESWL）：結石を破砕して自然排出を促します。',
                '手術療法：必要に応じて結石を取り除く手術を行います。',
              ],
              complications: [
                '尿路感染症：適切な感染予防策が必要です。',
                '腎機能障害：早期発見と管理が重要です。',
                '再発：生活習慣の改善と定期検査が重要です。',
              ],
              education: [
                '予防策の指導：適切な水分摂取とバランスの取れた食事を推奨します。',
                '症状管理の重要性：症状のモニタリングと早期対応を教えます。',
                '生活習慣の改善：低塩分・低タンパク食の重要性を強調します。',
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

  const DiseaseCard({
    super.key,
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
