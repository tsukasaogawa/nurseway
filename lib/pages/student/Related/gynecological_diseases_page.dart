import 'package:flutter/material.dart';

class GynecologicalDiseasesPage extends StatelessWidget {
  const GynecologicalDiseasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('婦人科疾患'),
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
                '手術療法：乳房切除術または部分切除術を行います。',
                '化学療法：抗癌剤を使用して癌細胞を攻撃します。',
                '放射線療法：高エネルギー放射線を使用して癌細胞を破壊します。',
                'ホルモン療法：ホルモン受容体陽性の場合、ホルモン療法を使用して癌細胞の成長を抑制します。',
              ],
              complications: [
                'リンパ浮腫：手術や放射線療法後のリンパ浮腫を予防するために適切なケアが必要です。',
                '再発：定期的なフォローアップと検査が重要です。',
                '転移：遠隔転移を防ぐための早期発見と治療が必要です。',
              ],
              education: [
                '自己検診の重要性：定期的な自己検診と医療機関での検査を推奨します。',
                '治療方法の理解：治療の選択肢とそれぞれのメリットとデメリットを説明します。',
                '生活習慣の改善：健康的な食事、適度な運動、禁煙の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '子宮筋腫',
              causes: [
                'ホルモンバランスの変化',
                '遺伝的要因',
              ],
              symptoms: [
                '過多月経',
                '腹痛',
                '頻尿',
                '不妊症',
              ],
              diagnosis: [
                '超音波検査',
                'MRI',
                'CTスキャン',
              ],
              care: [
                '薬物療法：ホルモン療法を使用して筋腫の成長を抑制します。',
                '手術療法：子宮筋腫摘出術や子宮全摘術を行います。',
                '経過観察：症状が軽い場合は定期的なフォローアップを行います。',
              ],
              complications: [
                '貧血：過多月経による貧血を予防するために鉄分補充が必要です。',
                '不妊症：治療選択肢について患者と相談し、適切な対応を行います。',
                '再発：定期的なフォローアップが重要です。',
              ],
              education: [
                '治療方法の理解：治療の選択肢とそれぞれのメリットとデメリットを説明します。',
                '生活習慣の改善：健康的な食事、適度な運動、ストレス管理の重要性を強調します。',
                '定期的なフォローアップ：症状のモニタリングと治療の調整を行います。',
              ],
            ),
            DiseaseCard(
              title: '卵巣嚢腫',
              causes: [
                'ホルモンバランスの変化',
                '遺伝的要因',
              ],
              symptoms: [
                '腹痛',
                '腹部膨満感',
                '頻尿',
                '月経異常',
              ],
              diagnosis: [
                '超音波検査',
                'CTスキャン',
                'MRI',
              ],
              care: [
                '経過観察：小さな嚢腫の場合、定期的なフォローアップを行います。',
                '薬物療法：ホルモン療法を使用して嚢腫の成長を抑制します。',
                '手術療法：卵巣嚢腫摘出術を行います。',
              ],
              complications: [
                '破裂：緊急手術が必要な場合があります。',
                '捻転：卵巣捻転が起きた場合、緊急手術が必要です。',
                '感染症：感染予防と早期治療が重要です。',
              ],
              education: [
                '自己管理の重要性：症状のモニタリングと早期の医療機関受診を指導します。',
                '治療方法の理解：治療の選択肢とそれぞれのメリットとデメリットを説明します。',
                '生活習慣の改善：健康的な食事、適度な運動、ストレス管理の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '子宮内膜症',
              causes: [
                'ホルモンバランスの変化',
                '遺伝的要因',
              ],
              symptoms: [
                '腹痛',
                '過多月経',
                '不妊症',
                '骨盤痛',
              ],
              diagnosis: [
                '超音波検査',
                'MRI',
                '腹腔鏡検査',
              ],
              care: [
                '薬物療法：ホルモン療法を使用して内膜組織の成長を抑制します。',
                '手術療法：内膜組織除去術を行います。',
                '疼痛管理：NSAIDsや鎮痛薬を使用して痛みを緩和します。',
              ],
              complications: [
                '不妊症：治療選択肢について患者と相談し、適切な対応を行います。',
                '再発：定期的なフォローアップが重要です。',
                '癒着：手術後のケアとリハビリが重要です。',
              ],
              education: [
                '治療方法の理解：治療の選択肢とそれぞれのメリットとデメリットを説明します。',
                '生活習慣の改善：健康的な食事、適度な運動、ストレス管理の重要性を強調します。',
                '定期的なフォローアップ：症状のモニタリングと治療の調整を行います。',
              ],
            ),
            DiseaseCard(
              title: '多嚢胞性卵巣症候群（PCOS）',
              causes: [
                'ホルモンバランスの異常',
                '遺伝的要因',
              ],
              symptoms: [
                '月経不順',
                '体重増加',
                '多毛症',
                '不妊症',
              ],
              diagnosis: [
                '血液検査（ホルモンレベル）',
                '超音波検査',
              ],
              care: [
                '薬物療法：ホルモン療法やインスリン感受性改善薬を使用します。',
                '生活習慣の改善：体重管理、健康的な食事、運動を推奨します。',
                '定期的なフォローアップ：症状のモニタリングと治療の調整を行います。',
              ],
              complications: [
                '不妊症：適切な治療とリハビリが必要です。',
                '糖尿病：血糖値のモニタリングと適切な治療が重要です。',
                '心血管疾患：リスク管理と予防が重要です。',
              ],
              education: [
                '自己管理の重要性：症状のモニタリングと生活習慣の改善を指導します。',
                '治療方法の理解：治療の選択肢とそれぞれのメリットとデメリットを説明します。',
                '生活習慣の改善：健康的な食事、適度な運動、体重管理の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '膣炎',
              causes: [
                '細菌感染',
                '真菌感染（カンジダ）',
                'トリコモナス感染',
                '化学物質への反応',
              ],
              symptoms: [
                'かゆみ',
                '異常な分泌物',
                '灼熱感',
                '排尿時の痛み',
              ],
              diagnosis: [
                '分泌物の検査',
                '顕微鏡検査',
                '培養検査',
              ],
              care: [
                '薬物療法：抗生物質や抗真菌薬を使用します。',
                '局所治療：膣クリームや坐剤を使用します。',
                '生活習慣の改善：適切な衛生管理を指導します。',
              ],
              complications: [
                '再発：予防と早期治療が重要です。',
                '骨盤炎症性疾患：適切な治療とフォローアップが必要です。',
                '性感染症：適切な予防と治療が重要です。',
              ],
              education: [
                '自己管理の重要性：症状のモニタリングと早期の医療機関受診を指導します。',
                '治療方法の理解：治療の選択肢とそれぞれのメリットとデメリットを説明します。',
                '生活習慣の改善：適切な衛生管理と予防策の重要性を強調します。',
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
