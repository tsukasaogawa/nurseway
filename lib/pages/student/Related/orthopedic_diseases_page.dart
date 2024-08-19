import 'package:flutter/material.dart';

class OrthopedicDiseasesPage extends StatelessWidget {
  const OrthopedicDiseasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('整形外科疾患'),
        backgroundColor: const Color(0xFFB3E5FC),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DiseaseCard(
              title: '骨折',
              causes: [
                '外傷',
                '転倒',
                '骨粗鬆症',
              ],
              symptoms: [
                '疼痛',
                '腫脹',
                '機能障害',
                '変形',
              ],
              diagnosis: [
                'X線検査',
                'CTスキャン',
                'MRI',
              ],
              care: [
                '固定：ギプスや副木を使用して骨折部位を固定し、骨の癒合を促進します。',
                '疼痛管理：NSAIDsやオピオイドを使用して疼痛をコントロールします。',
                'リハビリテーション：関節の可動域を維持し、筋力を回復させるための運動療法を行います。',
                '栄養管理：高カルシウム・高タンパク食を提供し、骨の修復を促進します。',
              ],
              complications: [
                '感染症：外科的介入後の感染を予防し、適切な抗生物質を投与します。',
                '血栓症：早期の動員と抗凝固療法を行い、血栓形成を防ぎます。',
                '慢性疼痛：疼痛管理と心理的サポートが必要です。',
              ],
              education: [
                '適切なケアの重要性：固定の重要性と自己管理方法を指導します。',
                'リハビリテーションの重要性：リハビリの継続とその効果を説明します。',
                '生活習慣の改善：栄養管理と適度な運動の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '変形性関節症',
              causes: [
                '加齢',
                '関節損傷',
                '肥満',
                '遺伝的要因',
              ],
              symptoms: [
                '関節痛',
                '関節の硬直',
                '機能障害',
                '腫脹',
              ],
              diagnosis: [
                'X線検査',
                'MRI',
                '関節液分析',
              ],
              care: [
                '疼痛管理：NSAIDsや鎮痛薬を使用して疼痛をコントロールします。',
                'リハビリテーション：関節の可動域を維持し、筋力を回復させるための運動療法を行います。',
                '体重管理：肥満が関節に与える負担を軽減するために体重管理を指導します。',
                '手術療法（重症例）：人工関節置換術などの外科的介入を検討します。',
              ],
              complications: [
                '関節の変形：早期治療と適切なケアが重要です。',
                '運動機能の低下：リハビリテーションと運動療法が必要です。',
                '慢性疼痛：継続的な疼痛管理と心理的サポートが必要です。',
              ],
              education: [
                '適切なケアの重要性：関節の保護と疼痛管理の方法を指導します。',
                'リハビリテーションの重要性：リハビリの継続とその効果を説明します。',
                '生活習慣の改善：体重管理と適度な運動の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '脊椎損傷',
              causes: [
                '外傷',
                '転倒',
                '交通事故',
              ],
              symptoms: [
                '麻痺',
                '疼痛',
                '感覚障害',
                '運動障害',
              ],
              diagnosis: [
                'X線検査',
                'CTスキャン',
                'MRI',
              ],
              care: [
                '疼痛管理：NSAIDsやオピオイドを使用して疼痛をコントロールします。',
                'リハビリテーション：運動療法や作業療法を通じて機能回復を図ります。',
                '栄養管理：バランスの取れた食事と適切な水分摂取を指導します。',
                '手術療法（必要時）：骨折の整復や脊椎の安定化を行います。',
              ],
              complications: [
                '感染症：外科的介入後の感染を予防し、適切な抗生物質を投与します。',
                '血栓症：早期の動員と抗凝固療法を行い、血栓形成を防ぎます。',
                '慢性疼痛：継続的な疼痛管理と心理的サポートが必要です。',
              ],
              education: [
                '適切なケアの重要性：脊椎の保護と疼痛管理の方法を指導します。',
                'リハビリテーションの重要性：リハビリの継続とその効果を説明します。',
                '生活習慣の改善：栄養管理と適度な運動の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '股関節置換術後',
              causes: [
                '変形性関節症',
                '関節リウマチ',
                '骨壊死',
              ],
              symptoms: [
                '術後疼痛',
                '術後腫脹',
                '機能障害',
              ],
              diagnosis: [
                'X線検査',
                'MRI',
              ],
              care: [
                '疼痛管理：NSAIDsやオピオイドを使用して疼痛をコントロールします。',
                'リハビリテーション：運動療法や作業療法を通じて機能回復を図ります。',
                '栄養管理：バランスの取れた食事と適切な水分摂取を指導します。',
                '手術療法（必要時）：再手術や修復手術を行います。',
              ],
              complications: [
                '感染症：外科的介入後の感染を予防し、適切な抗生物質を投与します。',
                '血栓症：早期の動員と抗凝固療法を行い、血栓形成を防ぎます。',
                '慢性疼痛：継続的な疼痛管理と心理的サポートが必要です。',
              ],
              education: [
                '適切なケアの重要性：術後のケアとリハビリの重要性を指導します。',
                'リハビリテーションの重要性：リハビリの継続とその効果を説明します。',
                '生活習慣の改善：栄養管理と適度な運動の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '椎間板ヘルニア',
              causes: [
                '加齢',
                '重い物を持ち上げる',
                '姿勢の悪さ',
              ],
              symptoms: [
                '腰痛',
                '下肢のしびれ',
                '筋力低下',
                '運動障害',
              ],
              diagnosis: [
                'MRI',
                'CTスキャン',
                'X線検査',
              ],
              care: [
                '疼痛管理：NSAIDsや筋弛緩薬を使用して疼痛をコントロールします。',
                'リハビリテーション：運動療法や作業療法を通じて機能回復を図ります。',
                '生活習慣の改善：正しい姿勢と適度な運動を指導します。',
                '手術療法（重症例）：ヘルニア摘出術を行います。',
              ],
              complications: [
                '慢性疼痛：継続的な疼痛管理と心理的サポートが必要です。',
                '運動機能の低下：適切なリハビリとサポートが必要です。',
                '神経損傷：早期発見と適切な治療が重要です。',
              ],
              education: [
                '適切なケアの重要性：姿勢の改善と疼痛管理の方法を指導します。',
                'リハビリテーションの重要性：リハビリの継続とその効果を説明します。',
                '生活習慣の改善：正しい姿勢と適度な運動の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '変形性膝関節症',
              causes: [
                '加齢',
                '肥満',
                '関節損傷',
              ],
              symptoms: [
                '膝の痛み',
                '腫脹',
                '関節の硬直',
                '機能障害',
              ],
              diagnosis: [
                'X線検査',
                'MRI',
                '関節液分析',
              ],
              care: [
                '疼痛管理：NSAIDsや鎮痛薬を使用して疼痛をコントロールします。',
                'リハビリテーション：関節の可動域を維持し、筋力を回復させるための運動療法を行います。',
                '体重管理：肥満が関節に与える負担を軽減するために体重管理を指導します。',
                '手術療法（重症例）：人工膝関節置換術などの外科的介入を検討します。',
              ],
              complications: [
                '関節の変形：早期治療と適切なケアが重要です。',
                '運動機能の低下：リハビリテーションと運動療法が必要です。',
                '慢性疼痛：継続的な疼痛管理と心理的サポートが必要です。',
              ],
              education: [
                '適切なケアの重要性：関節の保護と疼痛管理の方法を指導します。',
                'リハビリテーションの重要性：リハビリの継続とその効果を説明します。',
                '生活習慣の改善：体重管理と適度な運動の重要性を強調します。',
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

  const DiseaseCard({super.key,
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
