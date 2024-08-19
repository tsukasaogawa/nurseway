import 'package:flutter/material.dart';

class NeurologicalDiseasesPage extends StatelessWidget {
  const NeurologicalDiseasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('神経系疾患'),
        backgroundColor: const Color(0xFFB3E5FC),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DiseaseCard(
              title: '脳梗塞',
              causes: [
                '高血圧',
                '糖尿病',
                '高脂血症',
                '心房細動',
              ],
              symptoms: [
                '片側の麻痺',
                '言語障害',
                '視力障害',
                '頭痛',
              ],
              diagnosis: [
                'CTスキャン',
                'MRI',
                '血液検査',
                '心電図',
              ],
              care: [
                '血栓溶解療法：tPA（組織プラスミノーゲン活性化因子）の投与による血栓溶解を行います。',
                '抗血小板薬の投与：アスピリンやクロピドグレルを使用して再発予防を行います。',
                'リハビリテーション：運動療法、作業療法、言語療法を通じて機能回復を図ります。',
                '定期的なフォローアップ：定期的な検査と評価を行い、適切な治療を継続します。',
              ],
              complications: [
                '再発性脳梗塞：リスク因子の管理と定期的なフォローアップが重要です。',
                '心不全：心機能の評価と管理が必要です。',
                '嚥下障害：嚥下リハビリと適切な食事管理が必要です。',
              ],
              education: [
                '自己管理の重要性：薬物療法の遵守と生活習慣の改善を指導します。',
                '薬物療法の指導：服薬スケジュールの遵守、副作用の管理方法を説明します。',
                '生活習慣の改善：健康的な食事、適度な運動、禁煙の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: 'パーキンソン病',
              causes: [
                '遺伝的要因',
                '環境要因',
              ],
              symptoms: [
                '振戦',
                '筋固縮',
                '無動',
                '姿勢反射障害',
              ],
              diagnosis: [
                '臨床診断',
                '画像診断（MRI、PET）',
                '遺伝子検査',
              ],
              care: [
                '薬物療法：レボドパ、ドーパミン作動薬を使用して症状を管理します。',
                'リハビリテーション：運動療法、作業療法、言語療法を通じて機能を維持します。',
                '栄養管理：バランスの取れた食事と適切な水分摂取を指導します。',
                '定期的なフォローアップ：症状の進行と治療効果をモニタリングします。',
              ],
              complications: [
                '運動機能の低下：適切なリハビリとサポートが必要です。',
                '認知障害：早期発見と適切な介入が重要です。',
                'うつ病：心理的支援と治療が必要です。',
              ],
              education: [
                '症状管理の重要性：症状のモニタリングと適切な対応方法を指導します。',
                '薬物療法の指導：服薬スケジュールの遵守、副作用の管理方法を説明します。',
                '生活習慣の改善：バランスの取れた食事、適度な運動、ストレス管理の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: 'てんかん',
              causes: [
                '脳損傷',
                '脳腫瘍',
                '感染症',
                '遺伝的要因',
              ],
              symptoms: [
                '発作',
                '意識喪失',
                '筋痙攣',
                '感覚異常',
              ],
              diagnosis: [
                '脳波検査（EEG）',
                'MRI',
                'CTスキャン',
                '血液検査',
              ],
              care: [
                '抗てんかん薬の投与：バルプロ酸ナトリウムやカルバマゼピンを使用して発作をコントロールします。',
                '生活習慣の指導：睡眠不足やストレスを避けるよう指導します。',
                '発作予防のための環境調整：安全な環境を整え、発作時の事故を防ぎます。',
                '定期的なフォローアップ：薬物療法の効果と副作用をモニタリングします。',
              ],
              complications: [
                '発作の頻発：適切な薬物療法と生活習慣の改善が必要です。',
                '外傷：発作時の転倒や事故を防ぐための対策が重要です。',
                '心理的影響：心理的支援と適切なカウンセリングが必要です。',
              ],
              education: [
                '発作時の対応方法：発作時の安全な対応方法を家族やケアギバーに指導します。',
                '薬物療法の指導：服薬スケジュールの遵守、副作用の管理方法を説明します。',
                '生活習慣の改善：睡眠、ストレス管理、適度な運動の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: 'アルツハイマー病',
              causes: [
                '遺伝的要因',
                '加齢',
                '生活習慣',
              ],
              symptoms: [
                '記憶障害',
                '認知機能の低下',
                '行動変化',
                '言語障害',
              ],
              diagnosis: [
                '臨床診断',
                '画像診断（MRI、CT）',
                '神経心理学的検査',
              ],
              care: [
                '薬物療法：アセチルコリンエステラーゼ阻害薬（ドネペジル）やNMDA受容体拮抗薬（メマンチン）を使用します。',
                'リハビリテーション：認知療法や作業療法を通じて機能を維持します。',
                '環境調整：安全で支援的な環境を整えます。',
                '家族支援：家族への教育と支援を提供します。',
              ],
              complications: [
                '行動障害：適切な薬物療法と環境調整が必要です。',
                '誤嚥性肺炎：嚥下機能の評価と食事管理が重要です。',
                '転倒：安全な環境を整え、転倒予防を行います。',
              ],
              education: [
                '病気の理解：アルツハイマー病の進行とケア方法を家族に説明します。',
                '薬物療法の指導：服薬スケジュールの遵守、副作用の管理方法を説明します。',
                '生活習慣の改善：適度な運動、バランスの取れた食事、社会的活動の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '多発性硬化症',
              causes: [
                '自己免疫反応',
                '遺伝的要因',
                '環境要因',
              ],
              symptoms: [
                '筋力低下',
                '感覚障害',
                '視力障害',
                '疲労感',
              ],
              diagnosis: [
                'MRI',
                '脳脊髄液検査',
                '神経学的検査',
              ],
              care: [
                '薬物療法：免疫調節薬（インターフェロンベータ）、ステロイドを使用して症状を管理します。',
                'リハビリテーション：運動療法や作業療法を通じて機能を維持します。',
                '生活習慣の改善：バランスの取れた食事と適度な運動を推奨します。',
                '定期的なフォローアップ：症状の進行と治療効果をモニタリングします。',
              ],
              complications: [
                '運動機能の低下：適切なリハビリとサポートが必要です。',
                '認知障害：早期発見と適切な介入が重要です。',
                'うつ病：心理的支援と治療が必要です。',
              ],
              education: [
                '病気の理解：多発性硬化症の進行とケア方法を患者と家族に説明します。',
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
