import 'package:flutter/material.dart';

class PediatricDiseasesPage extends StatelessWidget {
  const PediatricDiseasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('小児疾患'),
        backgroundColor: const Color(0xFFB3E5FC),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DiseaseCard(
              title: '小児喘息',
              causes: [
                'アレルゲン（ダニ、花粉、ペットの毛など）',
                '感染症',
                '運動',
                'ストレス',
              ],
              symptoms: [
                '咳嗽',
                '喘鳴',
                '呼吸困難',
                '胸部圧迫感',
              ],
              diagnosis: [
                'スパイロメトリー',
                'アレルギー検査（皮膚テスト、血液検査）',
                '胸部X線',
              ],
              care: [
                '吸入療法：吸入ステロイド（フルチカゾン）やβ2刺激薬（サルブタモール）を使用します。',
                '環境管理：アレルゲンを避けるために家庭環境の改善を指導します。',
                '定期的なフォローアップ：症状のモニタリングと治療の調整を行います。',
              ],
              complications: [
                '発作の頻発：適切な治療と環境管理が必要です。',
                '呼吸不全：早期発見と緊急対応が重要です。',
                '成長発育への影響：長期的な管理とフォローアップが必要です。',
              ],
              education: [
                '吸入療法の指導：正しい吸入方法と薬物の使用を指導します。',
                '環境管理の重要性：アレルゲンの回避方法を説明します。',
                '発作時の対応方法：発作時の対応と緊急時の対策を指導します。',
              ],
            ),
            DiseaseCard(
              title: '先天性心疾患',
              causes: [
                '遺伝的要因',
                '環境要因（妊娠中の感染症、薬物使用）',
              ],
              symptoms: [
                'チアノーゼ',
                '呼吸困難',
                '体重増加不良',
                '心雑音',
              ],
              diagnosis: [
                '心エコー',
                '心電図',
                '胸部X線',
              ],
              care: [
                '外科的治療：心臓手術（心房中隔欠損修復術など）を行います。',
                '薬物療法：利尿薬（フロセミド）や強心薬（デジタリス）を使用します。',
                '栄養管理：適切な栄養摂取と体重管理を行います。',
                '定期的なフォローアップ：症状のモニタリングと治療の調整を行います。',
              ],
              complications: [
                '心不全：適切な薬物療法と栄養管理が必要です。',
                '成長発育への影響：長期的な管理とフォローアップが必要です。',
                '再手術の必要性：定期的な検査と評価が重要です。',
              ],
              education: [
                '治療方法の理解：手術や薬物療法の目的と効果を説明します。',
                '栄養管理の重要性：適切な栄養摂取と体重管理の重要性を指導します。',
                '定期検査の重要性：定期的なフォローアップと検査の重要性を説明します。',
              ],
            ),
            DiseaseCard(
              title: '小児糖尿病',
              causes: [
                '遺伝的要因',
                '自己免疫反応',
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
              ],
              care: [
                'インスリン療法：インスリン注射を定期的に行います。',
                '食事療法：バランスの取れた食事と適切なカロリー管理を指導します。',
                '運動療法：適度な運動を推奨し、血糖値のコントロールを行います。',
                '定期的なフォローアップ：血糖値とHbA1cのモニタリングを行います。',
              ],
              complications: [
                '低血糖：適切な対応方法と予防策を指導します。',
                '糖尿病性ケトアシドーシス：早期発見と緊急対応が重要です。',
                '成長発育への影響：長期的な管理とフォローアップが必要です。',
              ],
              education: [
                '自己管理の重要性：血糖値のモニタリングとインスリンの使用方法を指導します。',
                'インスリンの使用方法：正しい注射技術と保管方法を説明します。',
                '生活習慣の改善：バランスの取れた食事、適度な運動、ストレス管理の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '川崎病',
              causes: [
                '不明（免疫系の異常反応が関与）',
              ],
              symptoms: [
                '発熱',
                '発疹',
                'リンパ節腫脹',
                '口唇の赤みとひび割れ',
              ],
              diagnosis: [
                '臨床評価',
                '血液検査',
                '心エコー',
              ],
              care: [
                '免疫グロブリン療法：急性期に高用量免疫グロブリンを投与します。',
                'アスピリン療法：抗炎症作用と血小板凝集抑制作用を利用します。',
                '定期的なフォローアップ：冠動脈の状態をモニタリングします。',
              ],
              complications: [
                '冠動脈瘤：定期的な心エコーで早期発見を目指します。',
                '心筋炎：適切な治療とフォローアップが必要です。',
                '弁膜症：長期的な心臓の評価と管理が必要です。',
              ],
              education: [
                '症状の理解と管理：川崎病の症状と管理方法を家族に説明します。',
                '治療の重要性：免疫グロブリン療法とアスピリン療法の重要性を強調します。',
                '定期検査の重要性：定期的なフォローアップと心エコーの重要性を説明します。',
              ],
            ),
            DiseaseCard(
              title: '中耳炎',
              causes: [
                '細菌感染',
                'ウイルス感染',
                'アレルギー',
              ],
              symptoms: [
                '耳痛',
                '発熱',
                '耳漏',
                '聴力低下',
              ],
              diagnosis: [
                '耳鏡検査',
                '鼓膜の観察',
                '聴力検査',
              ],
              care: [
                '抗生物質療法：細菌感染が疑われる場合に抗生物質を投与します。',
                '疼痛管理：アセトアミノフェンやイブプロフェンを使用して痛みを緩和します。',
                '鼓膜切開術：膿がたまった場合に排出するための手術を行います。',
                '定期的なフォローアップ：感染の治癒状況を確認します。',
              ],
              complications: [
                '慢性中耳炎：定期的なフォローアップと適切な治療が必要です。',
                '鼓膜穿孔：適切なケアと治療が必要です。',
                '聴力低下：長期的な聴力の評価とリハビリが必要です。',
              ],
              education: [
                '適切なケアの重要性：耳の清潔を保ち、感染予防策を説明します。',
                '薬物療法の指導：抗生物質の使用方法と遵守の重要性を強調します。',
                '生活習慣の改善：アレルギー対策や環境の改善方法を説明します。',
              ],
            ),
            DiseaseCard(
              title: '溶連菌感染症',
              causes: [
                '溶血性連鎖球菌感染',
              ],
              symptoms: [
                '咽頭痛',
                '発熱',
                'リンパ節腫脹',
                '皮疹',
              ],
              diagnosis: [
                '咽頭スワブテスト',
                '迅速抗原検査',
                '培養検査',
              ],
              care: [
                '抗生物質療法：ペニシリンやアモキシシリンを使用して感染を治療します。',
                '疼痛管理：アセトアミノフェンやイブプロフェンを使用して痛みを緩和します。',
                '水分補給：適切な水分補給を指導します。',
                '定期的なフォローアップ：感染の治癒状況を確認します。',
              ],
              complications: [
                'リウマチ熱：適切な抗生物質療法が必要です。',
                '急性糸球体腎炎：早期発見と治療が重要です。',
                '再感染：感染予防策の指導が必要です。',
              ],
              education: [
                '適切なケアの重要性：感染予防策と手洗いの重要性を説明します。',
                '薬物療法の指導：抗生物質の使用方法と遵守の重要性を強調します。',
                '生活習慣の改善：健康的な生活習慣と環境の改善方法を説明します。',
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
