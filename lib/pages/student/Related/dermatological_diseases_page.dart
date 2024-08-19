import 'package:flutter/material.dart';

class DermatologicalDiseasesPage extends StatelessWidget {
  const DermatologicalDiseasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('皮膚科疾患'),
        backgroundColor: const Color(0xFFB3E5FC),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DiseaseCard(
              title: 'アトピー性皮膚炎',
              causes: [
                '遺伝的要因',
                '環境要因',
                '免疫系の異常',
              ],
              symptoms: [
                '痒み',
                '湿疹',
                '皮膚の乾燥',
                '炎症',
              ],
              diagnosis: [
                '臨床評価',
                '皮膚バイオプシー',
                '血液検査（IgE）',
              ],
              care: [
                '保湿剤の使用',
                'ステロイド外用薬の適用',
                '抗ヒスタミン薬の投与',
                '環境管理',
              ],
              complications: [
                '皮膚感染症',
                '慢性化',
                '生活の質の低下',
              ],
              education: [
                'スキンケアの重要性',
                '環境管理の方法',
                '治療の継続と遵守',
              ],
            ),
            DiseaseCard(
              title: '乾癬',
              causes: [
                '遺伝的要因',
                '免疫系の異常',
                '環境要因',
              ],
              symptoms: [
                '赤い斑点',
                '銀白色の鱗屑',
                '痒み',
                '関節痛',
              ],
              diagnosis: [
                '臨床評価',
                '皮膚バイオプシー',
                '血液検査',
              ],
              care: [
                '外用薬の使用',
                '光線療法',
                '全身療法（免疫抑制薬）',
                '生活習慣の改善',
              ],
              complications: [
                '関節炎',
                '皮膚感染症',
                '生活の質の低下',
              ],
              education: [
                '治療の継続と遵守',
                '生活習慣の改善',
                '症状の管理方法',
              ],
            ),
            DiseaseCard(
              title: '接触皮膚炎',
              causes: [
                '化学物質',
                '植物',
                '金属アレルギー',
              ],
              symptoms: [
                '発赤',
                '水疱',
                '痒み',
                '皮膚の腫れ',
              ],
              diagnosis: [
                '臨床評価',
                'パッチテスト',
                '皮膚バイオプシー',
              ],
              care: [
                '原因物質の特定と除去',
                'ステロイド外用薬の使用',
                '抗ヒスタミン薬の投与',
                '冷湿布の適用',
              ],
              complications: [
                '慢性化',
                '皮膚の色素沈着',
                '感染症',
              ],
              education: [
                '原因物質の特定と回避',
                '治療の継続と遵守',
                'スキンケアの重要性',
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
