import 'package:flutter/material.dart';

class RespiratoryDiseasesPage extends StatelessWidget {
  const RespiratoryDiseasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('呼吸器疾患'),
        backgroundColor: const Color(0xFFB3E5FC),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DiseaseCard(
              title: '肺炎',
              causes: [
                '細菌感染（肺炎球菌、マイコプラズマなど）',
                'ウイルス感染（インフルエンザウイルス、RSウイルスなど）',
                '真菌感染（カンジダ、アスペルギルスなど）',
                '誤嚥（誤嚥性肺炎）',
              ],
              symptoms: [
                '発熱',
                '咳嗽（乾性、湿性）',
                '喀痰（膿性痰、血痰）',
                '呼吸困難',
                '胸痛',
              ],
              diagnosis: [
                '胸部X線',
                '血液検査（白血球数、CRP）',
                '喀痰培養',
                '血液ガス分析',
              ],
              care: [
                '酸素療法：低酸素症を改善し、呼吸困難を軽減します。',
                '体位管理：ファウラー位や側臥位を取り、呼吸を楽にします。',
                '吸引：気道分泌物を除去し、呼吸を確保します。',
                '抗生物質投与：適切な抗生物質を使用し、感染を治療します。',
                '水分・栄養管理：十分な水分と栄養を提供し、回復を促進します。',
              ],
              complications: [
                '呼吸不全：早期発見と適切な管理が重要です。',
                '敗血症：全身感染の予防と治療が必要です。',
                '心不全：適切な心機能のモニタリングと管理が必要です。',
              ],
              education: [
                '咳嗽・痰の管理方法の指導：咳嗽方法と痰の処理方法を指導します。',
                '呼吸法の指導：腹式呼吸や口すぼめ呼吸を教え、呼吸効率を高めます。',
              ],
            ),
            DiseaseCard(
              title: '慢性閉塞性肺疾患（COPD）',
              causes: [
                '喫煙',
                '大気汚染',
                '職業性曝露（化学物質、粉塵など）',
                '遺伝的要因',
              ],
              symptoms: [
                '慢性的な咳嗽',
                '喀痰',
                '呼吸困難（努力呼吸、運動時呼吸困難）',
                '喘鳴（ゼーゼー音）',
              ],
              diagnosis: [
                'スパイロメトリー（肺活量測定）',
                '胸部X線',
                '血液ガス分析',
                'CTスキャン',
              ],
              care: [
                '喫煙停止支援：禁煙の重要性を強調し、支援プログラムを提供します。',
                '酸素療法：酸素吸入で低酸素症を改善します。',
                '薬物療法：気管支拡張薬やステロイドを使用して症状を管理します。',
                '呼吸リハビリ：呼吸法や運動療法を行い、呼吸機能を向上させます。',
                '栄養管理：高カロリー・高タンパク食を提供し、栄養状態を改善します。',
              ],
              complications: [
                '呼吸不全：早期発見と適切な管理が重要です。',
                '心肺機能不全：心機能のモニタリングと管理が必要です。',
                '感染予防：予防接種や手洗いを推奨します。',
              ],
              education: [
                '症状管理と薬物管理の指導：薬の正しい使用方法と症状のモニタリングを指導します。',
                '日常生活のアドバイス：運動と栄養の重要性を強調し、生活習慣の改善を指導します。',
              ],
            ),
            DiseaseCard(
              title: '気管支喘息',
              causes: [
                'アレルゲン（ダニ、花粉、動物の毛など）',
                '運動',
                '気道感染',
                'ストレス',
                '環境要因（大気汚染、喫煙）',
              ],
              symptoms: [
                '喘鳴',
                '咳嗽',
                '呼吸困難',
                '胸部圧迫感',
                '発作性の症状悪化',
              ],
              diagnosis: [
                'スパイロメトリー',
                'アレルギー検査（皮膚テスト、血液検査）',
                '呼吸機能検査',
                '血液ガス分析',
              ],
              care: [
                '吸入薬の指導：ステロイドやβ2刺激薬の正しい使用方法を教えます。',
                'トリガー回避指導：アレルゲンや刺激物の回避方法を指導します。',
                '症状モニタリング：ピークフローメーターを使用して呼吸状態を確認します。',
                '酸素療法：必要に応じて酸素吸入を行います。',
                '緊急対応：アドレナリンや経口ステロイドを使用し、発作時の対応を行います。',
              ],
              complications: [
                '呼吸不全：早期発見と適切な管理が重要です。',
                '気胸：早期発見と治療が必要です。',
                '感染予防：感染リスクを最小限に抑えるための対策を指導します。',
              ],
              education: [
                '吸入技術の指導：正しい吸入方法とデバイスの使用方法を教えます。',
                '発作時の対応方法の指導：発作時の対応方法と緊急時の連絡先を指導します。',
                '日常生活のアドバイス：環境管理やストレス管理の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '肺結核',
              causes: [
                '結核菌（Mycobacterium tuberculosis）感染',
              ],
              symptoms: [
                '慢性咳嗽',
                '痰（時に血痰）',
                '発熱',
                '体重減少',
                '夜間発汗',
              ],
              diagnosis: [
                '胸部X線',
                '喀痰検査（抗酸菌塗抹検査、培養検査）',
                'ツベルクリン反応検査',
                'インターフェロンγ放出アッセイ',
              ],
              care: [
                '薬物療法：結核薬（イソニアジド、リファンピシン、エタンブトール、ピラジナミド）を使用します。',
                '栄養管理：高カロリー・高タンパク食を提供し、体重減少を防ぎます。',
                '感染管理：隔離措置を講じ、他の患者やスタッフへの感染を防ぎます。',
                '心理サポート：長期療法に対する心理的支援を提供します。',
                '定期的なフォローアップ：治療効果のモニタリングと副作用の管理を行います。',
              ],
              complications: [
                '多剤耐性結核：適切な薬物療法とフォローアップが重要です。',
                '呼吸不全：早期発見と適切な管理が必要です。',
                '感染拡大：適切な感染管理と教育が必要です。',
              ],
              education: [
                '薬物療法の指導：服薬スケジュールの遵守と副作用の管理方法を説明します。',
                '感染予防の重要性：咳エチケットや手洗いの徹底を指導します。',
                '生活習慣の改善：栄養管理とストレス管理の重要性を強調します。',
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
