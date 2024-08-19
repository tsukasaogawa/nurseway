import 'package:flutter/material.dart';

class GastrointestinalDiseasesPage extends StatelessWidget {
  const GastrointestinalDiseasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('消化器疾患'),
        backgroundColor: const Color(0xFFB3E5FC),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DiseaseCard(
              title: '胃潰瘍',
              causes: [
                'ヘリコバクター・ピロリ感染',
                'NSAIDsの使用',
                'ストレス',
                '喫煙',
              ],
              symptoms: [
                '腹痛',
                '吐血',
                '黒色便',
                '食欲不振',
              ],
              diagnosis: [
                '内視鏡検査',
                '血液検査（ヘモグロビン、H. pylori抗体）',
                '便潜血検査',
                '胃液分析',
              ],
              care: [
                '薬物療法：プロトンポンプ阻害薬（オメプラゾール）や抗生物質（クラリスロマイシン）を使用し、感染と酸分泌を抑制します。',
                '食事療法：刺激物を避け、バランスの取れた食事を提供します。',
                'ストレス管理：リラクゼーション技術やカウンセリングを通じてストレスを軽減します。',
                '禁煙指導：禁煙プログラムを紹介し、喫煙をやめるよう支援します。',
              ],
              complications: [
                '胃出血：貧血やショックの予防と治療が必要です。',
                '胃穿孔：緊急手術が必要な場合があります。',
                '胃癌：定期的な内視鏡検査で早期発見を目指します。',
              ],
              education: [
                '自己管理の重要性：薬物療法の遵守と生活習慣の改善を指導します。',
                '薬物療法の指導：服薬スケジュールの遵守、副作用の管理方法を説明します。',
                '生活習慣の改善：バランスの取れた食事、ストレス管理、禁煙の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '肝硬変',
              causes: [
                '慢性肝炎（B型肝炎、C型肝炎）',
                'アルコール性肝炎',
                '非アルコール性脂肪肝疾患（NAFLD）',
              ],
              symptoms: [
                '黄疸',
                '腹水',
                '易疲労感',
                '出血傾向',
              ],
              diagnosis: [
                '血液検査（肝機能、血小板数）',
                '腹部超音波',
                'CTスキャン',
                '肝生検',
              ],
              care: [
                '食事療法：低ナトリウム食を提供し、腹水の予防と管理を行います。',
                '利尿薬の使用：スピロノラクトンやフロセミドを使用し、腹水のコントロールを行います。',
                'アルコール禁止：禁酒の重要性を強調し、サポートを提供します。',
                '定期的なフォローアップ：肝機能のモニタリングと早期発見・治療を行います。',
              ],
              complications: [
                '肝不全：肝機能の評価と適切な治療が重要です。',
                '肝癌：定期的な画像検査で早期発見を目指します。',
                '腹膜炎：感染予防と早期治療が必要です。',
              ],
              education: [
                'リスクファクターの管理：アルコール、ウイルス性肝炎の予防と管理を指導します。',
                '症状管理の重要性：症状の早期発見と適切な対応を説明します。',
                '生活習慣の改善：禁酒、バランスの取れた食事、定期的な運動の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '急性膵炎',
              causes: [
                '胆石症',
                'アルコール過剰摂取',
                '高脂血症',
                '特定の薬剤',
              ],
              symptoms: [
                '上腹部痛',
                '発熱',
                '吐き気・嘔吐',
                '背部痛',
              ],
              diagnosis: [
                '血液検査（アミラーゼ、リパーゼ）',
                '腹部超音波',
                'CTスキャン',
                'MRI',
              ],
              care: [
                '禁食：膵臓を休めるために禁食を行い、静脈栄養を提供します。',
                '鎮痛薬の投与：モルヒネやNSAIDsを使用し、痛みを緩和します。',
                '水分管理：適切な水分補給を行い、電解質バランスを維持します。',
              ],
              complications: [
                '膵壊死：定期的な画像検査と早期手術が必要な場合があります。',
                '膵膿瘍：抗生物質治療とドレナージが必要です。',
                '呼吸不全：酸素療法や人工呼吸管理が必要です。',
              ],
              education: [
                '原因の特定と管理：禁酒、胆石症の管理、薬物の使用方法を説明します。',
                '禁酒の重要性：禁酒プログラムを紹介し、アルコール摂取をやめるよう支援します。',
                '適切な栄養管理：バランスの取れた食事と適切なカロリー摂取を指導します。',
              ],
            ),
            DiseaseCard(
              title: 'クローン病',
              causes: [
                '遺伝的要因',
                '免疫系の異常',
                '環境要因',
                '喫煙',
              ],
              symptoms: [
                '腹痛',
                '下痢',
                '体重減少',
                '発熱',
              ],
              diagnosis: [
                '内視鏡検査',
                'バリウム検査',
                '血液検査（炎症マーカー）',
                '便検査',
              ],
              care: [
                '薬物療法：抗炎症薬（メサラジン）、免疫抑制薬（アザチオプリン）を使用し、炎症を抑制します。',
                '栄養療法：高カロリー・高タンパク食を提供し、栄養状態を改善します。',
                '手術療法：重症例では腸の一部を切除する手術が必要です。',
                '定期的なフォローアップ：症状のモニタリングと治療の調整を行います。',
              ],
              complications: [
                '腸閉塞：緊急手術が必要な場合があります。',
                '瘻孔形成：外科的介入と抗生物質治療が必要です。',
                '栄養不良：適切な栄養管理とサプリメントの使用が重要です。',
              ],
              education: [
                '自己管理の重要性：薬物療法の遵守と症状のモニタリングを指導します。',
                '薬物療法の指導：服薬スケジュールの遵守、副作用の管理方法を説明します。',
                '生活習慣の改善：バランスの取れた食事、ストレス管理、禁煙の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '逆流性食道炎',
              causes: [
                '胃酸の逆流',
                '肥満',
                '食生活の乱れ',
                '喫煙',
              ],
              symptoms: [
                '胸やけ',
                '吐酸',
                '咽頭痛',
                '嚥下困難',
              ],
              diagnosis: [
                '内視鏡検査',
                'pHモニタリング',
                'バリウム造影検査',
              ],
              care: [
                '薬物療法：プロトンポンプ阻害薬（オメプラゾール）、H2受容体拮抗薬（ラニチジン）を使用し、胃酸分泌を抑制します。',
                '食事療法：脂肪分の少ない食事、小分けにして食べる、食後すぐに横にならないよう指導します。',
                '生活習慣の改善：体重管理、禁煙、アルコール摂取の制限を指導します。',
              ],
              complications: [
                '食道狭窄：定期的な内視鏡検査で早期発見を目指します。',
                'バレット食道：定期的な内視鏡検査で早期発見を目指します。',
                '食道癌：定期的な内視鏡検査で早期発見を目指します。',
              ],
              education: [
                '自己管理の重要性：薬物療法の遵守と生活習慣の改善を指導します。',
                '薬物療法の指導：服薬スケジュールの遵守、副作用の管理方法を説明します。',
                '生活習慣の改善：バランスの取れた食事、体重管理、禁煙の重要性を強調します。',
              ],
            ),
            DiseaseCard(
              title: '胆嚢炎',
              causes: [
                '胆石',
                '胆管閉塞',
                '感染症',
              ],
              symptoms: [
                '右上腹部痛',
                '発熱',
                '吐き気・嘔吐',
                '黄疸',
              ],
              diagnosis: [
                '超音波検査',
                'CTスキャン',
                '血液検査（白血球数、肝機能）',
              ],
              care: [
                '薬物療法：抗生物質（シプロフロキサシン）、鎮痛薬（モルヒネ）を使用します。',
                '手術療法：胆嚢摘出術（腹腔鏡下胆嚢摘出術）を行います。',
                '水分管理：適切な水分補給を行い、電解質バランスを維持します。',
              ],
              complications: [
                '膿瘍形成：抗生物質治療とドレナージが必要です。',
                '敗血症：早期発見と適切な治療が重要です。',
                '膵炎：定期的な画像検査で早期発見を目指します。',
              ],
              education: [
                '自己管理の重要性：手術後のケアと生活習慣の改善を指導します。',
                '薬物療法の指導：服薬スケジュールの遵守、副作用の管理方法を説明します。',
                '生活習慣の改善：バランスの取れた食事、適度な運動、禁煙の重要性を強調します。',
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
