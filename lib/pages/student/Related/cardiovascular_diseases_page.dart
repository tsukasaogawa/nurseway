import 'package:flutter/material.dart';

class CardiovascularDiseasesPage extends StatelessWidget {
  const CardiovascularDiseasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('循環器疾患'),
        backgroundColor: const Color(0xFFB3E5FC),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DiseaseCard(
              title: '心不全',
              causes: [
                '高血圧',
                '冠動脈疾患',
                '心筋症',
                '弁膜症',
              ],
              symptoms: [
                '呼吸困難',
                '浮腫',
                '疲労感',
                '胸痛',
              ],
              diagnosis: [
                '胸部X線',
                '心エコー',
                '血液検査（BNP、ANP）',
                '心電図',
              ],
              care: [
                '酸素療法：患者の酸素飽和度を維持し、呼吸困難を軽減します。',
                '薬物療法：利尿薬（フロセミド）、ACE阻害薬（エナラプリル）、ベータ遮断薬（メトプロロール）を投与し、心機能を改善します。',
                '体位管理：ファウラー位にすることで、呼吸を楽にします。',
                '水分・塩分管理：水分および塩分の摂取を制限し、体液バランスを維持します。',
              ],
              complications: [
                '肺水腫：呼吸困難や咳嗽が悪化するため、早期発見と対応が必要です。',
                '腎不全：利尿薬使用時には腎機能のモニタリングが重要です。',
                '不整脈：定期的な心電図検査と薬物管理が必要です。',
              ],
              education: [
                '自己管理の重要性：体重測定、症状モニタリング、薬物の正しい使用方法を指導します。',
                '薬物療法の指導：服薬スケジュールの遵守、服薬の副作用とその対応を説明します。',
                '生活習慣の改善：塩分摂取の制限、禁煙、適度な運動の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '虚血性心疾患（心筋梗塞、狭心症）',
              causes: [
                '動脈硬化',
                '高血圧',
                '高脂血症',
                '喫煙',
              ],
              symptoms: [
                '胸痛',
                '呼吸困難',
                '発汗',
                '吐き気',
              ],
              diagnosis: [
                '心電図',
                '心エコー',
                '冠動脈造影',
                '血液検査（トロポニン、CK-MB）',
              ],
              care: [
                '酸素療法：酸素投与により、心筋の酸素供給を改善します。',
                '薬物療法：抗血小板薬（アスピリン）、硝酸薬（ニトログリセリン）、ベータ遮断薬（アテノロール）を使用し、心筋の負担を軽減します。',
                '経皮的冠動脈形成術（PCI）：冠動脈の閉塞部位を拡張し、血流を改善します。',
                '心臓リハビリテーション：運動療法、栄養指導、心理的支援を含む包括的なリハビリプログラムを提供します。',
              ],
              complications: [
                '心不全：早期発見と適切な治療が重要です。',
                '不整脈：心電図モニタリングと薬物管理が必要です。',
                '心破裂：緊急手術が必要な場合があります。',
              ],
              education: [
                'リスクファクターの管理：高血圧、高脂血症、喫煙、肥満などのリスク因子の管理方法を指導します。',
                '薬物療法の指導：服薬スケジュールの遵守、副作用の管理方法を説明します。',
                '心臓リハビリの重要性：運動療法、栄養管理、ストレス管理の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '高血圧',
              causes: [
                '遺伝的要因',
                '食塩摂取過多',
                '肥満',
                'ストレス',
              ],
              symptoms: [
                '頭痛',
                'めまい',
                '動悸',
                '疲労感',
              ],
              diagnosis: [
                '血圧測定',
                '血液検査（電解質、腎機能）',
                '心電図',
                '眼底検査',
              ],
              care: [
                '生活習慣の改善：食事療法（減塩食）、適度な運動、禁煙、アルコール摂取の制限を指導します。',
                '薬物療法：降圧薬（ACE阻害薬、ベータ遮断薬、カルシウム拮抗薬）を投与し、血圧をコントロールします。',
                '定期的な血圧測定：家庭での血圧測定を推奨し、定期的な医療機関でのフォローアップを行います。',
              ],
              complications: [
                '心不全：定期的な心機能評価と適切な治療が必要です。',
                '脳卒中：血圧管理と脳卒中の早期兆候の認識が重要です。',
                '腎不全：腎機能の定期的なモニタリングと早期治療が必要です。',
              ],
              education: [
                '自己管理の重要性：血圧測定の方法、症状モニタリング、生活習慣の改善方法を指導します。',
                '薬物療法の指導：服薬スケジュールの遵守、副作用の管理方法を説明します。',
                '生活習慣の改善：適度な運動、バランスの取れた食事、ストレス管理の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '心房細動',
              causes: [
                '高血圧',
                '心疾患',
                '甲状腺機能亢進症',
                'アルコール過剰摂取',
              ],
              symptoms: [
                '動悸',
                '息切れ',
                'めまい',
                '胸痛',
              ],
              diagnosis: [
                '心電図',
                'ホルター心電図',
                '心エコー',
                '血液検査',
              ],
              care: [
                '薬物療法：抗凝固薬（ワルファリン）、抗不整脈薬（アミオダロン）を使用し、血栓形成と不整脈を防ぎます。',
                'カテーテルアブレーション：心房細動の原因となる異常電気経路を除去します。',
                '生活習慣の改善：禁煙、アルコール摂取の制限、適度な運動を指導します。',
                '定期的なフォローアップ：心電図モニタリングと定期的な医療機関での評価を行います。',
              ],
              complications: [
                '脳卒中：抗凝固療法と定期的なフォローアップが重要です。',
                '心不全：心機能の評価と適切な治療が必要です。',
                '血栓塞栓症：抗凝固療法と症状のモニタリングが重要です。',
              ],
              education: [
                'リスクファクターの管理：高血圧、心疾患、甲状腺機能亢進症などのリスク因子の管理方法を指導します。',
                '薬物療法の指導：服薬スケジュールの遵守、副作用の管理方法を説明します。',
                '症状管理の重要性：動悸や息切れの症状が出た際の対応方法を指導します。',
              ],
            ),
            DiseaseCard(
              title: '心筋梗塞',
              causes: [
                '動脈硬化',
                '高血圧',
                '高脂血症',
                '喫煙',
              ],
              symptoms: [
                '激しい胸痛',
                '呼吸困難',
                '発汗',
                '吐き気',
              ],
              diagnosis: [
                '心電図',
                '血液検査（トロポニン、CK-MB）',
                '冠動脈造影',
                '心エコー',
              ],
              care: [
                '酸素療法：酸素投与により心筋の酸素供給を改善します。',
                '薬物療法：抗血小板薬（アスピリン）、硝酸薬（ニトログリセリン）、ベータ遮断薬（アテノロール）を使用し、心筋の負担を軽減します。',
                '経皮的冠動脈形成術（PCI）：冠動脈の閉塞部位を拡張し、血流を改善します。',
                '心臓リハビリテーション：運動療法、栄養指導、心理的支援を含む包括的なリハビリプログラムを提供します。',
              ],
              complications: [
                '心不全：早期発見と適切な治療が重要です。',
                '不整脈：心電図モニタリングと薬物管理が必要です。',
                '心破裂：緊急手術が必要な場合があります。',
              ],
              education: [
                'リスクファクターの管理：高血圧、高脂血症、喫煙、肥満などのリスク因子の管理方法を指導します。',
                '薬物療法の指導：服薬スケジュールの遵守、副作用の管理方法を説明します。',
                '心臓リハビリの重要性：運動療法、栄養管理、ストレス管理の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '心筋炎',
              causes: [
                'ウイルス感染（コクサッキーウイルス、パルボウイルスなど）',
                '細菌感染',
                '薬物反応',
                '自己免疫疾患',
              ],
              symptoms: [
                '胸痛',
                '呼吸困難',
                '疲労感',
                '不整脈',
              ],
              diagnosis: [
                '心エコー',
                '心電図',
                '血液検査（炎症マーカー）',
                '心筋生検',
              ],
              care: [
                '酸素療法：酸素飽和度を維持し、呼吸困難を軽減します。',
                '薬物療法：抗ウイルス薬、抗生物質、ステロイドを使用し、炎症を抑えます。',
                '休息：心臓の負担を軽減するため、十分な休息を指導します。',
                '定期的なフォローアップ：心機能の評価と症状のモニタリングを行います。',
              ],
              complications: [
                '心不全：早期発見と適切な治療が重要です。',
                '不整脈：心電図モニタリングと薬物管理が必要です。',
                '血栓塞栓症：抗凝固療法と症状のモニタリングが重要です。',
              ],
              education: [
                'リスクファクターの管理：感染症予防、薬物使用の適正管理、自己免疫疾患の管理方法を指導します。',
                '薬物療法の指導：服薬スケジュールの遵守、副作用の管理方法を説明します。',
                '生活習慣の改善：適度な運動、バランスの取れた食事、ストレス管理の重要性を強調します。',
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
