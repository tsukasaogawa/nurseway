import 'package:flutter/material.dart';

class ImmunologicalDiseasesPage extends StatelessWidget {
  const ImmunologicalDiseasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('免疫系疾患'),
        backgroundColor: const Color(0xFFB3E5FC),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DiseaseCard(
              title: '全身性エリテマトーデス（SLE）',
              causes: [
                '遺伝的要因',
                'ホルモンの変化',
                '環境要因',
              ],
              symptoms: [
                '蝶形紅斑',
                '関節痛',
                '発熱',
                '疲労感',
              ],
              diagnosis: [
                '抗核抗体検査',
                '血液検査',
                '尿検査',
              ],
              care: [
                '薬物療法（ステロイド、免疫抑制剤）',
                '定期的なフォローアップ',
                '生活習慣の改善',
                '日焼け止めの使用',
              ],
              complications: [
                '腎炎',
                '心肺機能障害',
                '神経系の合併症',
              ],
              education: [
                '自己管理の重要性',
                '薬物療法の理解と遵守',
                '日常生活の調整と予防策',
                '紫外線対策の重要性',
              ],
            ),
            DiseaseCard(
              title: '関節リウマチ',
              causes: [
                '遺伝的要因',
                '免疫系の異常',
              ],
              symptoms: [
                '関節の痛みと腫れ',
                '朝のこわばり',
                '疲労感',
              ],
              diagnosis: [
                '血液検査（リウマチ因子）',
                'X線検査',
                'MRI',
              ],
              care: [
                '薬物療法（抗リウマチ薬、NSAIDs）',
                'リハビリテーション',
                '生活習慣の改善',
                '定期的な運動',
              ],
              complications: [
                '関節変形',
                '運動機能の低下',
                '心血管疾患のリスク増加',
              ],
              education: [
                '薬物療法の指導',
                '運動とリハビリの重要性',
                '生活習慣の改善',
                '症状管理の自己評価方法',
              ],
            ),
            DiseaseCard(
              title: 'シェーグレン症候群',
              causes: [
                '遺伝的要因',
                '免疫系の異常',
              ],
              symptoms: [
                '口渇',
                'ドライアイ',
                '関節痛',
                '疲労感',
              ],
              diagnosis: [
                '血液検査（抗SSA/Ro抗体）',
                '唾液腺の生検',
                'シルマーテスト',
              ],
              care: [
                '人工涙液の使用',
                '唾液代用薬の使用',
                '免疫抑制薬の投与',
                '生活習慣の改善',
              ],
              complications: [
                '乾燥性角結膜炎',
                '虫歯の増加',
                '関節炎',
              ],
              education: [
                'ドライアイとドライマウスの管理方法',
                '口腔衛生の重要性',
                '適切な水分摂取',
                '定期的な眼科・歯科受診の重要性',
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
