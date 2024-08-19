import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class RegenerativeMedicinePage extends StatelessWidget {
  const RegenerativeMedicinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('再生医療・美容点滴', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '美容医療における再生医療・美容点滴に関する総合解説',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 再生医療の方法',
                  '2. 美容点滴の方法',
                  '3. 適応症',
                  '4. 合併症とリスク',
                  '5. 最新の研究と技術',
                  '6. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 再生医療の方法'),
                _buildSubSectionTitle('幹細胞療法'),
                _buildBodyText(
                    '概要:\n'
                    '幹細胞療法は、患者自身の幹細胞を利用して、皮膚の再生や若返りを図る治療法です。脂肪組織から抽出した幹細胞（脂肪由来幹細胞：ADSCs）や骨髄から得た幹細胞が主に使用されます。\n\n'
                    '治療の方法:\n'
                    '・患者の脂肪組織または骨髄から幹細胞を採取。\n'
                    '・幹細胞を分離・培養し、目的部位に注入。\n\n'
                    '利点:\n'
                    '・自然な若返り効果。\n'
                    '・アレルギーのリスクが低い（自己細胞使用のため）。\n\n'
                    '欠点:\n'
                    '・高額な治療費。\n'
                    '・効果が個人差による。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('プレートレットリッチプラズマ療法'),
                _buildBodyText(
                    '概要:\n'
                    'PRP療法は、患者自身の血液から抽出した血小板を濃縮し、皮膚や毛髪の再生を促す治療法です。血小板が成長因子を含んでいるため、組織再生を促進します。\n\n'
                    '治療の方法:\n'
                    '・患者の血液を採取し、遠心分離機で血小板を濃縮。\n'
                    '・濃縮血小板を目的部位に注射。\n\n'
                    '利点:\n'
                    '・自然な再生効果。\n'
                    '・アレルギーのリスクが低い（自己血液使用のため）。\n\n'
                    '欠点:\n'
                    '・効果の現れ方に個人差がある。\n'
                    '・繰り返しの治療が必要。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 美容点滴の方法'),
                _buildSubSectionTitle('高濃度ビタミンC点滴'),
                _buildBodyText(
                    '概要:\n'
                    '高濃度ビタミンC点滴は、ビタミンCを静脈内に直接投与し、肌の美白や抗酸化作用を促進する治療法です。\n\n'
                    '治療の方法:\n'
                    '・ビタミンCを含む溶液を点滴で静脈内に投与。\n\n'
                    '利点:\n'
                    '・即効性のある美白効果。\n'
                    '・免疫力の向上。\n\n'
                    '欠点:\n'
                    '・一部の患者でアレルギー反応が起こる可能性。\n'
                    '・頻繁な治療が必要。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('グルタチオン点滴'),
                _buildBodyText(
                    '概要:\n'
                    'グルタチオン点滴は、強力な抗酸化作用を持つグルタチオンを静脈内に投与し、肌の美白や解毒作用を促進する治療法です。\n\n'
                    '治療の方法:\n'
                    '・グルタチオンを含む溶液を点滴で静脈内に投与。\n\n'
                    '利点:\n'
                    '・強力な抗酸化作用。\n'
                    '・肌の美白効果。\n\n'
                    '欠点:\n'
                    '・一部の患者でアレルギー反応が起こる可能性。\n'
                    '・頻繁な治療が必要。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('マイヤーズカクテル'),
                _buildBodyText(
                    '概要:\n'
                    'マイヤーズカクテルは、ビタミンB群、ビタミンC、カルシウム、マグネシウムなどを含む複合栄養剤を静脈内に投与する点滴療法です。全身の健康増進や疲労回復、美肌効果が期待されます。\n\n'
                    '治療の方法:\n'
                    '・栄養素を含む溶液を点滴で静脈内に投与。\n\n'
                    '利点:\n'
                    '・全身の健康状態の改善。\n'
                    '・エネルギー増進、美肌効果。\n\n'
                    '欠点:\n'
                    '・効果の個人差がある。\n'
                    '・一部の患者でアレルギー反応が起こる可能性。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 適応症'),
                _buildBodyText(
                    '再生医療:\n'
                    '・老化による肌のたるみやシワ。\n'
                    '・毛髪の再生（薄毛治療）。\n'
                    '・傷跡や瘢痕の改善。\n\n'
                    '美容点滴:\n'
                    '・肌の美白や抗酸化作用の促進。\n'
                    '・免疫力の向上。\n'
                    '・全身の健康増進や疲労回復。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 合併症とリスク'),
                _buildBodyText(
                    '再生医療:\n'
                    '・感染のリスク（幹細胞療法）。\n'
                    '・注射部位の痛みや腫れ。\n'
                    '・効果の個人差。\n\n'
                    '美容点滴:\n'
                    '・アレルギー反応のリスク。\n'
                    '・点滴部位の痛みや腫れ。\n'
                    '・頻繁な治療が必要な場合がある。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 最新の研究と技術'),
                _buildBodyText(
                    '最新の研究では、再生医療や美容点滴の効果を高めるための新しい技術や薬剤が開発されています。特に、遺伝子治療やナノテクノロジーを用いた新しいアプローチが注目されています。\n\n'
                ),

                const SizedBox(height: 20),
                _buildSectionTitle('6. 参考文献'),
                _buildReferenceList([
                    '1. Stem Cell Research & Therapy - Stem Cell Therapy in Dermatology: https://stemcellres.biomedcentral.com/articles/10.1186/s13287-017-0675-3',
                    '2. Journal of Cosmetic Dermatology - Efficacy of ADSCs in Skin Rejuvenation: https://onlinelibrary.wiley.com/doi/10.1111/jocd.12534',
                    '3. Journal of Cutaneous and Aesthetic Surgery - PRP for Skin Rejuvenation: https://www.jcasonline.com/article.asp?issn=0974-2077;year=2017;volume=10;issue=3;spage=134;epage=138;aulast=Redaelli',
                    '4. Dermatologic Surgery - Efficacy of PRP Injections: https://journals.lww.com/dermatologicsurgery/Abstract/2017/06000/Platelet_Rich_Plasma_in_Treatment_of.7.aspx',
                    '5. Journal of Alternative and Complementary Medicine - High-Dose Vitamin C Therapy: https://www.liebertpub.com/doi/10.1089/acm.2019.0037',
                    '6. Nutrients - Benefits of Vitamin C in Dermatology: https://www.mdpi.com/2072-6643/9/8/866',
                    '7. Journal of Clinical and Aesthetic Dermatology - Glutathione for Skin Lightening: https://jcadonline.com/glutathione-in-skin-lightening/',
                    '8. Dermatologic Therapy - Efficacy of Glutathione in Skin Whitening: https://onlinelibrary.wiley.com/doi/10.1111/dth.13929',
                    '9. Alternative Medicine Review - Myers\' Cocktail for Chronic Illness: https://www.thorne.com/take-5-daily/article/the-myers-cocktail-iv-vitamin-therapy',
                    '10. Journal of Clinical Medicine - Nutrient Infusions for Health: https://www.mdpi.com/2077-0383/9/7/2172',
                    '11. Nature Reviews Drug Discovery - Advances in Regenerative Medicine: https://www.nature.com/articles/nrd.2017.98',
                    '12. Stem Cell Research & Therapy - Innovations in Stem Cell Therapy: https://stemcellres.biomedcentral.com/articles/10.1186/s13287-020-01832-w',
                    '13. Journal of Clinical Medicine - Advances in Nutrient Infusion Therapy: https://www.mdpi.com/2077-0383/9/7/2173'
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
