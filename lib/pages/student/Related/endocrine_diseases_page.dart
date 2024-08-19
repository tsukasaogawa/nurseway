import 'package:flutter/material.dart';

class EndocrineDiseasesPage extends StatelessWidget {
  const EndocrineDiseasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('内分泌疾患'),
        backgroundColor: const Color(0xFFB3E5FC),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DiseaseCard(
              title: '糖尿病',
              causes: [
                '遺伝的要因',
                '肥満',
                '食事の乱れ',
                '運動不足',
              ],
              symptoms: [
                '頻尿',
                '口渇',
                '体重減少',
                '疲労感',
              ],
              diagnosis: [
                '血糖値測定',
                'HbA1c検査',
                '尿検査',
                '口腔ブドウ糖負荷試験',
              ],
              care: [
                'インスリン療法：適切なインスリン投与スケジュールの設定と自己注射の技術指導。',
                '経口血糖降下薬：薬剤の効果と副作用のモニタリング。',
                '食事療法：バランスの取れた食事計画の作成と食事指導。',
                '運動療法：適度な運動プログラムの設定とその継続指導。',
                '血糖管理：血糖値の自己測定方法の教育と記録の確認。',
              ],
              complications: [
                '腎不全：定期的な腎機能検査と早期の対策。',
                '網膜症：定期的な眼科検査と早期の治療介入。',
                '神経障害：足の観察と適切なフットケア。',
              ],
              education: [
                '自己管理の重要性：定期的な自己血糖測定とその記録の習慣化。',
                '薬物療法の指導：薬剤の正しい服用方法と副作用の認識。',
                '生活習慣の改善：健康的な食事と運動の継続。',
              ],
            ),
            DiseaseCard(
              title: '甲状腺機能亢進症（バセドウ病）',
              causes: [
                '自己免疫疾患',
                '遺伝的要因',
              ],
              symptoms: [
                '体重減少',
                '頻脈',
                '発汗過多',
                '手指振戦',
              ],
              diagnosis: [
                '血液検査（TSH、T3、T4）',
                '甲状腺シンチグラフィー',
                '超音波検査',
              ],
              care: [
                '抗甲状腺薬：薬剤の効果と副作用のモニタリング。',
                '放射性ヨウ素治療：治療の説明と副作用の管理。',
                '手術療法（甲状腺摘出術）：術前・術後のケアと教育。',
                '定期的なフォローアップ：血液検査と症状のモニタリング。',
              ],
              complications: [
                '甲状腺クリーゼ：緊急事態に備えた対応策の確立。',
                '心房細動：心電図モニタリングと心拍管理。',
                '骨粗鬆症：カルシウムとビタミンDの補給指導。',
              ],
              education: [
                '自己管理の重要性：定期的な血液検査と症状の自己モニタリング。',
                '薬物療法の指導：薬剤の正しい服用方法と副作用の認識。',
                '生活習慣の改善：健康的な食事と適度な運動。',
              ],
            ),
            DiseaseCard(
              title: '甲状腺機能低下症',
              causes: [
                '橋本病',
                '甲状腺手術後',
                '放射線治療後',
              ],
              symptoms: [
                '体重増加',
                '疲労感',
                '寒がり',
                '皮膚の乾燥',
              ],
              diagnosis: [
                '血液検査（TSH、T3、T4）',
                '甲状腺シンチグラフィー',
                '超音波検査',
              ],
              care: [
                '甲状腺ホルモン補充療法：適切な投与量の調整と副作用のモニタリング。',
                '定期的なフォローアップ：血液検査と症状のモニタリング。',
                '栄養管理：バランスの取れた食事計画の作成と指導。',
                '体温管理：寒がりの患者に対する保温対策。',
              ],
              complications: [
                '心不全：心機能の定期的なモニタリング。',
                '意識障害：早期発見と迅速な対応。',
                '不妊症：適切なホルモン治療とサポート。',
              ],
              education: [
                '自己管理の重要性：定期的な血液検査と症状の自己モニタリング。',
                '薬物療法の指導：薬剤の正しい服用方法と副作用の認識。',
                '生活習慣の改善：健康的な食事と適度な運動。',
              ],
            ),
            DiseaseCard(
              title: '副腎不全',
              causes: [
                '自己免疫疾患（アジソン病）',
                '感染症（結核）',
                '出血',
                '腫瘍',
              ],
              symptoms: [
                '倦怠感',
                '体重減少',
                '低血圧',
                '色素沈着',
              ],
              diagnosis: [
                '血液検査（コルチゾール、ACTH）',
                'ACTH刺激試験',
                'CT/MRI',
              ],
              care: [
                'ホルモン補充療法：適切な投与量の調整と副作用のモニタリング。',
                '緊急時対応：副腎クリーゼのリスクを認識し、迅速な対応策を準備。',
                '栄養管理：バランスの取れた食事計画の作成と指導。',
                '体調管理：ストレス管理と定期的な健康チェック。',
              ],
              complications: [
                '副腎クリーゼ：迅速な対応と緊急治療。',
                '低血糖：血糖値の定期的なモニタリングと管理。',
                '電解質異常：定期的な血液検査と適切な補正。',
              ],
              education: [
                '自己管理の重要性：定期的な血液検査と症状の自己モニタリング。',
                '薬物療法の指導：薬剤の正しい服用方法と副作用の認識。',
                '生活習慣の改善：健康的な食事とストレス管理。',
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
