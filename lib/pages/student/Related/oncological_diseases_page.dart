import 'package:flutter/material.dart';

class OncologicalDiseasesPage extends StatelessWidget {
  const OncologicalDiseasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('腫瘍疾患'),
        backgroundColor: const Color(0xFFB3E5FC),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DiseaseCard(
              title: '乳癌',
              causes: [
                '遺伝的要因',
                'ホルモンバランスの変化',
                '生活習慣',
              ],
              symptoms: [
                '乳房のしこり',
                '乳頭の分泌物',
                '皮膚の変化',
                '乳房の痛み',
              ],
              diagnosis: [
                'マンモグラフィー',
                '超音波検査',
                '生検',
                'MRI',
              ],
              care: [
                '手術療法（乳房切除術）',
                '化学療法',
                '放射線療法',
                'ホルモン療法',
                '支持療法（疼痛管理、栄養管理）',
              ],
              complications: [
                'リンパ浮腫',
                '再発',
                '転移',
              ],
              education: [
                '自己検診の重要性',
                '治療方法の理解',
                '生活習慣の改善',
                '支持療法の重要性',
              ],
            ),
            DiseaseCard(
              title: '肺癌',
              causes: [
                '喫煙',
                '大気汚染',
                '職業性曝露（アスベストなど）',
              ],
              symptoms: [
                '咳嗽',
                '血痰',
                '呼吸困難',
                '体重減少',
              ],
              diagnosis: [
                '胸部X線',
                'CTスキャン',
                '生検',
                '気管支鏡検査',
              ],
              care: [
                '手術療法（切除術）',
                '化学療法',
                '放射線療法',
                '支持療法（疼痛管理、栄養管理）',
              ],
              complications: [
                '呼吸不全',
                '再発',
                '転移',
              ],
              education: [
                '禁煙の重要性',
                '治療方法の理解',
                '生活習慣の改善',
                '支持療法の重要性',
              ],
            ),
            DiseaseCard(
              title: '大腸癌',
              causes: [
                '食生活（高脂肪、低繊維食）',
                '遺伝的要因',
                '慢性腸疾患',
              ],
              symptoms: [
                '便通異常（便秘、下痢）',
                '血便',
                '体重減少',
                '腹痛',
              ],
              diagnosis: [
                '大腸内視鏡検査',
                'CTスキャン',
                '生検',
                '血液検査（CEA、CA19-9）',
              ],
              care: [
                '手術療法（切除術）',
                '化学療法',
                '放射線療法',
                '支持療法（疼痛管理、栄養管理）',
              ],
              complications: [
                '腸閉塞',
                '再発',
                '転移',
              ],
              education: [
                '食生活の改善',
                '治療方法の理解',
                '定期検診の重要性',
                '支持療法の重要性',
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
