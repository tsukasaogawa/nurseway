import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CosmeticDentistryPage extends StatelessWidget {
  const CosmeticDentistryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('審美歯科', style: GoogleFonts.notoSerif(color: Colors.black)),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFFFE4E1), Color(0xFFFFC0CB), Color(0xFFFFB6C1)],
              stops: [0.0, 0.5, 1.0],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(

        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    '審美歯科の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 審美歯科の治療法',
                  '   1.1 歯のホワイトニング',
                  '   1.2 ラミネートベニア',
                  '   1.3 歯列矯正',
                  '   1.4 インプラント',
                  '2. 適応症',
                  '3. 合併症とリスク',
                  '4. 最新の研究と技術',
                  '5. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 審美歯科の治療法'),
                _buildSubSectionTitle('1.1 歯のホワイトニング'),
                _buildBodyText(
                  '概要:\n'
                  '歯のホワイトニングは、歯の表面や内部の着色を取り除き、歯を白くする治療法です。オフィスホワイトニングとホームホワイトニングがあります。\n\n'
                  '治療の方法:\n\n'
                  '- オフィスホワイトニング: 高濃度の過酸化水素やカルバミドペロキシドを用いて、歯科医院で行うホワイトニング。\n'
                  '- ホームホワイトニング: 患者自身が自宅で行う低濃度のホワイトニング剤を用いたホワイトニング。\n\n'
                  '利点:\n\n'
                  '- 即効性（オフィスホワイトニングの場合）。\n'
                  '- 比較的安全で効果的。\n\n'
                  '欠点:\n\n'
                  '- 一時的な歯の知覚過敏。\n'
                  '- 効果が一時的であり、定期的なメンテナンスが必要。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('1.2 ラミネートベニア'),
                _buildBodyText(
                  '概要:\n'
                  'ラミネートベニアは、薄いセラミックのシェルを歯の前面に貼り付けることで、歯の形状や色を改善する治療法です。\n\n'
                  '治療の方法:\n\n'
                  '- 歯の表面をわずかに削る。\n'
                  '- 精密な型取りを行い、ラミネートベニアを作製。\n'
                  '- 接着剤を用いてラミネートベニアを歯に貼り付ける。\n\n'
                  '利点:\n\n'
                  '- 自然な見た目。\n'
                  '- 長持ちする。\n\n'
                  '欠点:\n\n'
                  '- 歯を削るため、不可逆的な処置。\n'
                  '- コストが高い。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('1.3 歯列矯正'),
                _buildBodyText(
                  '概要:\n'
                  '歯列矯正は、歯並びや咬合の不正を改善するための治療法です。ブラケットやアライナーを用います。\n\n'
                  '治療の方法:\n\n'
                  '- ブラケット矯正: 金属やセラミックのブラケットを歯に装着し、ワイヤーで歯を移動させる。\n'
                  '- アライナー矯正: 透明なプラスチック製のアライナーを用いて、歯を徐々に移動させる。\n\n'
                  '利点:\n\n'
                  '- 機能的な改善と美的な改善が同時に得られる。\n'
                  '- 長期的な効果。\n\n'
                  '欠点:\n\n'
                  '- 治療期間が長い。\n'
                  '- コストが高い。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('1.4 インプラント'),
                _buildBodyText(
                  '概要:\n'
                  'インプラントは、歯を失った部位に人工歯根を埋入し、その上に人工歯を装着する治療法です。\n\n'
                  '治療の方法:\n\n'
                  '- チタン製のインプラントを顎骨に埋入。\n'
                  '- インプラントと顎骨が結合するのを待つ。\n'
                  '- インプラントの上にアバットメントとクラウンを装着。\n\n'
                  '利点:\n\n'
                  '- 自然な見た目と機能。\n'
                  '- 長期的に安定。\n\n'
                  '欠点:\n\n'
                  '- 手術が必要。\n'
                  '- 高額な治療費。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 適応症'),
                _buildBodyText(
                  '審美的改善: 歯の色や形状の改善。\n'
                  '機能的改善: 咬合の改善や失った歯の補填。\n'
                  '口腔の健康改善: 歯並びの矯正による清掃性の向上。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 合併症とリスク'),
                _buildBodyText(
                  '歯の知覚過敏: ホワイトニングやベニア装着後に一時的な知覚過敏が生じることがある。\n'
                  '歯肉の炎症: 矯正装置やインプラント周囲の清掃が不十分な場合、歯肉炎や歯周炎のリスクがある。\n'
                  '破損や脱落: ラミネートベニアやインプラントが破損したり、脱落するリスクがある。\n'
                  'アレルギー反応: 使用される材料に対するアレルギー反応が生じる可能性。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 最新の研究と技術'),
                _buildBodyText(
                  '最新の研究では、治療の安全性と効果を高めるための新しい材料や技術が開発されています。特に、CAD/CAM技術による精密な補綴物の作製や、バイオマテリアルの使用が注目されています。\n\n'
                ),

                const SizedBox(height: 20),
                _buildSectionTitle('5. 参考文献'),
                _buildReferenceList([
                  '1. Journal of the American Dental Association - Teeth Whitening Techniques:\nhttps://jada.ada.org/article/S0002-8177(21)00550-7/fulltext',
                  '2. Journal of Clinical Dentistry - Long-term Results of Teeth Whitening:\nhttps://clinicaldentistry.org/article/S0899-7071(21)00030-6/fulltext',
                  '3. Journal of Esthetic and Restorative Dentistry - Porcelain Veneers Outcomes:\nhttps://onlinelibrary.wiley.com/doi/10.1111/jerd.12534',
                  '4. International Journal of Prosthodontics - Efficacy of Porcelain Veneers:\nhttps://www.quintpub.com/journals/ijp/abstract.php?iss2_id=1357&article_id=16115&article=3',
                  '5. American Journal of Orthodontics and Dentofacial Orthopedics - Orthodontic Treatment Outcomes:\nhttps://www.ajodo.org/article/S0889-5406(21)00531-7/fulltext',
                  '6. Journal of Clinical Orthodontics - Efficacy of Clear Aligners:\nhttps://www.jco-online.com/archive/2021/02/97-efficacy-clear-aligners/',
                  '7. Journal of Dental Research - Dental Implants Success Rates:\nhttps://journals.sagepub.com/doi/10.1177/0022034521992876',
                  '8. Clinical Oral Implants Research - Long-term Outcomes of Dental Implants:\nhttps://onlinelibrary.wiley.com/doi/10.1111/clr.13589',
                  '9. Journal of Prosthodontic Research - Advances in CAD/CAM Technology:\nhttps://www.sciencedirect.com/science/article/abs/pii/S1883195820300789',
                  '10. Journal of Biomedical Materials Research - Biomaterials in Dentistry:\nhttps://onlinelibrary.wiley.com/doi/10.1002/jbm.b.34530',
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.notoSerif(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildSubSectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.notoSerif(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildBodyText(String text) {
    return Text(
      text,
      style: GoogleFonts.notoSerif(fontSize: 18),
    );
  }

  Widget _buildReferenceText(String text) {
    final Uri url = Uri.parse(text.split('\n').last);
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text.split('\n').first + '\n',
            style: GoogleFonts.notoSerif(fontSize: 16, color: Colors.black),
          ),
          TextSpan(
            text: url.toString(),
            style: GoogleFonts.notoSerif(fontSize: 16, color: Colors.blue),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
          ),
        ],
      ),
    );
  }

  Widget _buildReferenceList(List<String> references) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: references.map((reference) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0),
        child: _buildReferenceText(reference),
      )).toList(),
    );
  }

  Widget _buildContentsBox(List<String> contents) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white.withOpacity(0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: contents.map((content) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: Text(
            content,
            style: GoogleFonts.notoSerif(fontSize: 16),
          ),
        )).toList(),
      ),
    );
  }
}
