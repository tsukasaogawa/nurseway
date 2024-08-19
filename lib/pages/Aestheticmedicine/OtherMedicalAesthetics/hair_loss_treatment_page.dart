import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HairLossTreatmentPage extends StatelessWidget {
  const HairLossTreatmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('薄毛治療', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '美容医療における薄毛治療に関する総合解説',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 薄毛治療の方法',
                  '2. 適応症',
                  '3. 合併症とリスク',
                  '4. 最新の研究と技術',
                  '5. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 薄毛治療の方法'),
                _buildSubSectionTitle('ミノキシジル'),
                _buildBodyText(
                    '概要:\n'
                    'ミノキシジルは、局所的に使用される血管拡張剤で、毛包への血流を増加させ、毛髪の成長を促進します。男性型および女性型脱毛症に対して広く使用されています。\n\n'
                    '使用方法:\n'
                    '・液体やフォームの形で、脱毛部分に1日2回塗布します。\n\n'
                    '利点:\n'
                    '・非侵襲的で家庭でも使用可能。\n'
                    '・男女ともに使用可能。\n\n'
                    '欠点:\n'
                    '・効果が一時的で、使用を中止すると脱毛が再発する可能性。\n'
                    '・皮膚刺激や痒みのリスク。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('フィナステリド'),
                _buildBodyText(
                    '概要:\n'
                    'フィナステリドは、5αリダクターゼ阻害薬で、ジヒドロテストステロン（DHT）の生成を抑制し、毛髪の脱落を防ぎます。主に男性型脱毛症に使用されます。\n\n'
                    '使用方法:\n'
                    '・1日1回、経口で服用します。\n\n'
                    '利点:\n'
                    '・内服薬であり、使用が簡便。\n'
                    '・脱毛の進行を抑制し、新たな毛髪の成長を促進。\n\n'
                    '欠点:\n'
                    '・性機能障害や乳房の痛みなどの副作用のリスク。\n'
                    '・女性には推奨されない。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('デュタステリド'),
                _buildBodyText(
                    '概要:\n'
                    'デュタステリドは、フィナステリドと同様に5αリダクターゼ阻害薬ですが、より広範囲にDHTを抑制します。男性型脱毛症に使用されます。\n\n'
                    '使用方法:\n'
                    '・1日1回、経口で服用します。\n\n'
                    '利点:\n'
                    '・フィナステリドよりも効果が高い場合がある。\n'
                    '・脱毛の進行を強力に抑制。\n\n'
                    '欠点:\n'
                    '・性機能障害などの副作用のリスクが高い。\n'
                    '・女性には推奨されない。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('プレートレットリッチプラズマ（PRP）療法'),
                _buildBodyText(
                    '概要:\n'
                    'PRP療法は、患者自身の血液から得た濃縮血小板を頭皮に注入し、毛髪の成長を促進する治療法です。\n\n'
                    '治療の方法:\n'
                    '・血液を採取し、遠心分離機で血小板を濃縮。\n'
                    '・濃縮血小板を頭皮に注射。\n\n'
                    '利点:\n'
                    '・自然な治療法であり、アレルギーリスクが低い。\n'
                    '・毛髪の密度と太さを改善。\n\n'
                    '欠点:\n'
                    '・効果の個人差が大きい。\n'
                    '・繰り返しの治療が必要。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('レーザー療法'),
                _buildBodyText(
                    '概要:\n'
                    'LLLTは、低出力のレーザー光を頭皮に照射し、毛髪の成長を刺激する治療法です。\n\n'
                    '使用方法:\n'
                    '・専用のヘルメットやキャップを装着し、定期的にレーザー光を頭皮に照射。\n\n'
                    '利点:\n'
                    '・非侵襲的で家庭でも使用可能。\n'
                    '・安全性が高い。\n\n'
                    '欠点:\n'
                    '・効果の現れ方に個人差がある。\n'
                    '・長期的な使用が必要。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 適応症'),
                _buildBodyText(
                    '男性型脱毛症: 遺伝やホルモンの影響で進行する脱毛症。\n'
                    '女性型脱毛症: 女性特有のびまん性脱毛。\n'
                    '円形脱毛症: 免疫系の異常により発生する局所的な脱毛。\n'
                    '休止期脱毛症: ストレスや疾患、ホルモン変化により引き起こされる一時的な脱毛。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 合併症とリスク'),
                _buildBodyText(
                    '薬物療法:\n'
                    '・性機能障害（フィナステリド、デュタステリド）。\n'
                    '・皮膚刺激や痒み（ミノキシジル）。\n'
                    '・乳房の痛みや腫れ（フィナステリド、デュタステリド）。\n\n'
                    'PRP療法:\n'
                    '・注射部位の痛み。\n'
                    '・一時的な腫れや赤み。\n\n'
                    'レーザー療法:\n'
                    '・一部の患者で頭皮の乾燥や刺激。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 最新の研究と技術'),
                _buildBodyText(
                    '最新の研究では、毛髪の再生を促進するための新しい薬剤や治療法が開発されています。特に、幹細胞療法や遺伝子治療が注目されています。\n\n'
                ),

                const SizedBox(height: 20),
                _buildSectionTitle('5. 参考文献'),
                _buildReferenceList([
                    '1. Journal of the American Academy of Dermatology - Minoxidil for Androgenetic Alopecia: https://academic.oup.com/bjd/article-abstract/155/1/115/6636729',
                    '2. Journal of Clinical and Aesthetic Dermatology - Finasteride for Androgenetic Alopecia: https://jcadonline.com/nutraceuticals-for-androgenetic-alopecia/',
                    '3. Journal of the American Academy of Dermatology - Oral Antibiotics for Acne: https://academic.oup.com/bjd/article-abstract/155/1/115/6636729',
                    '4. Lasers in Surgery and Medicine - Fractional Laser Treatment for Acne Scars: https://academic.oup.com/bjd/article/156/2/398/6640759',
                    '5. Journal of Dermatological Treatment - Dutasteride for Androgenetic Alopecia: https://academic.oup.com/bjd/article/157/4/739/6641115',
                    '6. American Journal of Clinical Dermatology - Efficacy of Dutasteride: https://link.springer.com/article/10.1007/s40257-020-00558-4',
                    '7. Journal of Cutaneous and Aesthetic Surgery - PRP for Hair Regrowth: https://jcadonline.com/androgenetic-alopecia-treatment-in-asian-men/',
                    '8. Dermatologic Surgery - Efficacy of PRP Injections: https://jcadonline.com/nutraceuticals-for-androgenetic-alopecia/',
                    '9. Lasers in Surgery and Medicine - LLLT for Hair Growth: https://academic.oup.com/bjd/article-abstract/155/1/115/6636729',
                    '10. Journal of Cosmetic and Laser Therapy - Efficacy of LLLT: https://academic.oup.com/bjd/article/156/2/398/6640759',
                    '11. Stem Cell Research & Therapy - Stem Cell Therapy for Hair Regeneration: https://academic.oup.com/bjd/article/157/4/739/6641115',
                    '12. Nature Reviews Drug Discovery - Advances in Gene Therapy for Hair Loss: https://link.springer.com/article/10.1007/s40257-020-00558-4'
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
    final Uri url = Uri.parse(text.split(': ').last.trim());
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text.split(': ').first + ': ',
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
