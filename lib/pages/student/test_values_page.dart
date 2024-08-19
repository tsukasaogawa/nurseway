import 'package:flutter/material.dart';

class TestValuesPage extends StatelessWidget {
  const TestValuesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('検査値ガイド'),
        backgroundColor: const Color(0xFFB3E5FC),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '注意: これらの情報は一般的な基準値を提供しており、患者の個別性や具体的な状況を考慮する必要があります。実際の臨床では、各施設の基準や最新のガイドラインを確認し、適切に対応してください。',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 20),
            DiseaseCard(
              title: 'バイタルサイン基準値',
              values: [
                '• 体温:',
                '  正常: 36.1°C - 37.2°C',
                '  異常: 発熱（感染症、炎症）、低体温（ショック、低血糖）',
                '• 脈拍:',
                '  成人: 60 - 100 拍/分',
                '  異常: 頻脈（心不全、貧血）、徐脈（心ブロック、薬物影響）',
                '• 呼吸数:',
                '  成人: 12 - 20 回/分',
                '  異常: 頻呼吸（感染症、心不全）、呼吸減少（中枢神経抑制）',
                '• 血圧:',
                '  成人: 120/80 mmHg 前後',
                '  異常: 高血圧（心血管疾患、腎疾患）、低血圧（出血、脱水）',
                '• 酸素飽和度 (SpO2):',
                '  95% - 100%',
                '  異常: 低酸素血症（呼吸器疾患、心不全）',
              ],
            ),
            DiseaseCard(
              title: '血液検査基準値',
              values: [
                '• 赤血球数 (RBC):',
                '  男性: 4.2 - 5.8 × 10^6/μL',
                '  女性: 3.8 - 5.1 × 10^6/μL',
                '  異常: 高値（脱水、多血症）、低値（貧血、出血）',
                '• ヘモグロビン (Hb):',
                '  男性: 13.5 - 17.5 g/dL',
                '  女性: 12.0 - 16.0 g/dL',
                '  異常: 高値（脱水、COPD）、低値（貧血、出血）',
                '• ヘマトクリット (Hct):',
                '  男性: 40 - 54%',
                '  女性: 36 - 48%',
                '  異常: 高値（脱水、COPD）、低値（貧血、出血）',
                '• 白血球数 (WBC):',
                '  4,000 - 10,000 /μL',
                '  異常: 高値（感染症、炎症）、低値（骨髄抑制、ウイルス感染）',
                '• 血小板数 (PLT):',
                '  150,000 - 400,000 /μL',
                '  異常: 高値（骨髄増殖性疾患）、低値（ITP、DIC）',
                '• 血糖値 (Glucose):',
                '  空腹時: 70 - 99 mg/dL',
                '  異常: 高値（糖尿病、ストレス）、低値（インスリン過剰、栄養不良）',
                '• クレアチニン (Cr):',
                '  男性: 0.7 - 1.3 mg/dL',
                '  女性: 0.6 - 1.1 mg/dL',
                '  異常: 高値（腎不全、筋肉障害）、低値（筋肉減少症）',
                '• 尿素窒素 (BUN):',
                '  7 - 20 mg/dL',
                '  異常: 高値（腎不全、脱水）、低値（肝不全、栄養不良）',
                '• 総コレステロール (Total Cholesterol):',
                '  < 200 mg/dL',
                '  異常: 高値（高脂血症、甲状腺機能低下症）、低値（肝疾患、栄養不良）',
                '• HDLコレステロール:',
                '  > 40 mg/dL',
                '  異常: 低値（心血管リスク増加）',
                '• LDLコレステロール:',
                '  < 130 mg/dL',
                '  異常: 高値（心血管リスク増加）',
                '• トリグリセリド (TG):',
                '  < 150 mg/dL',
                '  異常: 高値（高脂血症、糖尿病）、低値（栄養不良）',
                '• C反応性蛋白 (CRP):',
                '  < 0.3 mg/dL',
                '  異常: 高値（感染症、炎症）',
              ],
            ),
            DiseaseCard(
              title: '尿検査基準値',
              values: [
                '• 尿比重:',
                '  1.005 - 1.030',
                '  異常: 高値（脱水、糖尿病）、低値（腎不全）',
                '• pH:',
                '  4.5 - 8.0',
                '  異常: 高値（尿路感染症）、低値（代謝性アシドーシス）',
                '• 蛋白尿:',
                '  陰性',
                '  異常: 陽性（腎疾患、尿路感染症）',
                '• 糖尿:',
                '  陰性',
                '  異常: 陽性（糖尿病）',
                '• ケトン体:',
                '  陰性',
                '  異常: 陽性（糖尿病、飢餓）',
                '• 血尿:',
                '  陰性',
                '  異常: 陽性（尿路感染症、腎結石）',
                '• 尿沈渣:',
                '  尿中の赤血球、白血球、細菌、結晶などは異常がない範囲',
                '  異常: 尿中の赤血球（出血）、白血球（感染症）、細菌（尿路感染症）、結晶（結石）',
              ],
            ),
            DiseaseCard(
              title: '電解質基準値',
              values: [
                '• ナトリウム (Na):',
                '  135 - 145 mEq/L',
                '  異常: 高値（脱水、アルドステロン症）、低値（SIADH、腎不全）',
                '• カリウム (K):',
                '  3.5 - 5.0 mEq/L',
                '  異常: 高値（腎不全、溶血）、低値（利尿薬、下痢）',
                '• カルシウム (Ca):',
                '  8.5 - 10.2 mg/dL',
                '  異常: 高値（副甲状腺機能亢進症、癌）、低値（副甲状腺機能低下症、ビタミンD欠乏）',
                '• マグネシウム (Mg):',
                '  1.7 - 2.2 mg/dL',
                '  異常: 高値（腎不全、マグネシウム過剰摂取）、低値（アルコール依存症、下痢）',
                '• 塩素 (Cl):',
                '  98 - 106 mEq/L',
                '  異常: 高値（脱水、代謝性アシドーシス）、低値（代謝性アルカローシス）',
              ],
            ),
            DiseaseCard(
              title: '肝機能検査基準値',
              values: [
                '• アラニンアミノトランスフェラーゼ (ALT):',
                '  男性: 10 - 40 U/L',
                '  女性: 7 - 35 U/L',
                '  異常: 高値（肝炎、肝障害）',
                '• アスパラギン酸アミノトランスフェラーゼ (AST):',
                '  男性: 10 - 40 U/L',
                '  女性: 9 - 32 U/L',
                '  異常: 高値（肝炎、肝障害、心筋梗塞）',
                '• アルカリホスファターゼ (ALP):',
                '  44 - 147 U/L',
                '  異常: 高値（肝疾患、骨疾患）',
                '• ビリルビン (総ビリルビン):',
                '  0.3 - 1.2 mg/dL',
                '  異常: 高値（肝疾患、胆道閉塞、溶血性貧血）',
              ],
            ),
            DiseaseCard(
              title: '凝固系検査基準値',
              values: [
                '• プロトロンビン時間 (PT):',
                '  11 - 13.5 秒',
                '  異常: 延長（肝疾患、ビタミンK欠乏、抗凝固薬）',
                '• 部分トロンボプラスチン時間 (APTT):',
                '  25 - 35 秒',
                '  異常: 延長（血友病、抗凝固薬）',
                '• 国際標準比 (INR):',
                '  0.8 - 1.2',
                '  異常: 高値（抗凝固薬）',
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
  final List<String> values;

  const DiseaseCard({
    super.key,
    required this.title,
    required this.values,
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
            for (var value in values) Text(value),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: TestValuesPage()));
}
