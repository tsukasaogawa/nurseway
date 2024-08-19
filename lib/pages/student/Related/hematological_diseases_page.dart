import 'package:flutter/material.dart';

class HematologicalDiseasesPage extends StatelessWidget {
  const HematologicalDiseasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('血液疾患'),
        backgroundColor: const Color(0xFFB3E5FC),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DiseaseCard(
              title: '貧血',
              causes: [
                '鉄欠乏',
                'ビタミンB12欠乏',
                '慢性疾患',
              ],
              symptoms: [
                '疲労感',
                'めまい',
                '息切れ',
                '蒼白',
              ],
              diagnosis: [
                '血液検査（ヘモグロビン、フェリチン）',
                '骨髄検査',
                '便潜血検査',
              ],
              care: [
                '鉄剤投与',
                'ビタミン補充',
                '食事療法',
                '定期的なフォローアップ',
                '活動量の調整',
              ],
              complications: [
                '心不全',
                '感染症のリスク増加',
              ],
              education: [
                '食事指導（鉄分とビタミンB12を含む食品）',
                '自己管理の重要性',
                '定期的なフォローアップの重要性',
              ],
            ),
            DiseaseCard(
              title: '白血病',
              causes: [
                '遺伝的要因',
                '放射線被曝',
                '化学物質への曝露',
              ],
              symptoms: [
                '発熱',
                '貧血',
                '出血傾向',
                '感染症の頻発',
              ],
              diagnosis: [
                '血液検査',
                '骨髄検査',
                '遺伝子検査',
              ],
              care: [
                '化学療法',
                '放射線療法',
                '造血幹細胞移植',
                '支持療法（輸血、感染予防）',
                '精神的サポート',
              ],
              complications: [
                '感染症',
                '出血',
                '再発',
              ],
              education: [
                '治療の理解と遵守',
                '感染予防策の実施',
                '生活習慣の改善',
                '精神的サポートの重要性',
              ],
            ),
            DiseaseCard(
              title: '血友病',
              causes: [
                '遺伝的要因',
              ],
              symptoms: [
                '関節や筋肉の出血',
                '容易にあざができる',
                '出血時間の延長',
              ],
              diagnosis: [
                '血液検査（凝固因子活性検査）',
                '遺伝子検査',
              ],
              care: [
                '凝固因子製剤の投与',
                '定期的なフォローアップ',
                '怪我の予防と管理',
                '適切な運動指導',
              ],
              complications: [
                '関節の損傷',
                '慢性的な痛み',
                '感染症のリスク（輸血による）',
              ],
              education: [
                '自己管理と治療遵守の重要性',
                '怪我予防の方法',
                '定期的なフォローアップの重要性',
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
