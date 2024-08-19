import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LiposuctionPage extends StatelessWidget {
  const LiposuctionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('脂肪吸引', style: GoogleFonts.notoSerif(color: Colors.black)),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFFFE4E1), Color(0xFFFFC0CB), Color(0xFFFFB6C1)], // 桜色のグラデーション
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
                    '脂肪吸引の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容外科における脂肪吸引に関する総合解説',
                  '2. 脂肪吸引の手術法',
                  '   2.1 トラディショナル脂肪吸引',
                  '   2.2 チューメセント脂肪吸引',
                  '   2.3 レーザー脂肪吸引',
                  '   2.4 超音波脂肪吸引',
                  '3. 適応症',
                  '4. 合併症とリスク',
                  '5. 最新の研究と技術',
                  '6. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容外科における脂肪吸引に関する総合解説'),
                _buildBodyText(
                  '脂肪吸引は、局所的な脂肪蓄積を取り除き、体の形状を整えるために行われる美容外科手術です。以下に、脂肪吸引の主要な手術法、適応症、合併症、最新の研究について詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 脂肪吸引の手術法'),
                _buildSubSectionTitle('2.1 トラディショナル脂肪吸引'),
                _buildBodyText(
                  '＜概要＞\n'
                  '従来の脂肪吸引は、カニューレと呼ばれる細い管を用いて、局所麻酔または全身麻酔下で行われます。\n\n'
                  '＜手術の方法＞\n'
                  '小さな切開を行い、カニューレを挿入して脂肪を吸引します。\n'
                  '脂肪を物理的に取り除くため、術後の腫れや内出血が生じることがあります。\n\n'
                  '＜利点＞\n'
                  '広範囲の脂肪を取り除くことができる。\n'
                  '比較的長期間の効果が期待できる。\n\n'
                  '＜欠点＞\n'
                  '回復期間が長い。\n'
                  '術後の腫れや内出血が顕著。\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.2 チューメセント脂肪吸引'),
                _buildBodyText(
                  '＜概要＞\n'
                  'チューメセント技術は、従来の脂肪吸引を改良した方法で、手術前に大量の生理食塩水、リドカイン（麻酔薬）、アドレナリンを混合した溶液を注入します。\n\n'
                  '＜手術の方法＞\n'
                  '注入した溶液が脂肪組織を膨張させ、脂肪の除去を容易にします。\n'
                  '血管収縮作用により出血が少なく、術後の回復も早い。\n\n'
                  '＜利点＞\n'
                  '出血が少ない。\n'
                  '術後の回復が早い。\n\n'
                  '＜欠点＞\n'
                  '大量の溶液注入により、体液バランスの管理が必要。\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.3 レーザー脂肪吸引'),
                _buildBodyText(
                  '＜概要＞\n'
                  'レーザー脂肪吸引は、レーザーエネルギーを用いて脂肪細胞を破壊し、その後吸引する方法です。\n\n'
                  '＜手術の方法＞\n'
                  'レーザーファイバーを挿入し、脂肪を溶解。\n'
                  '溶解した脂肪をカニューレで吸引。\n\n'
                  '＜利点＞\n'
                  '皮膚の引き締め効果が期待できる。\n'
                  '出血が少ない。\n\n'
                  '＜欠点＞\n'
                  '高度な技術が必要。\n'
                  '一部の患者で効果が限定的。\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.4 超音波脂肪吸引'),
                _buildBodyText(
                  '＜概要＞\n'
                  '超音波脂肪吸引は、超音波エネルギーを用いて脂肪細胞を破壊し、その後吸引する方法です。\n\n'
                  '＜手術の方法＞\n'
                  '超音波プローブを挿入し、脂肪を液化。\n'
                  '液化した脂肪をカニューレで吸引。\n\n'
                  '＜利点＞\n'
                  '硬い脂肪組織の除去に適している。\n'
                  '周囲の組織に対するダメージが少ない。\n\n'
                  '＜欠点＞\n'
                  '熱による組織損傷のリスク。\n'
                  '高度な技術が必要。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 適応症'),
                _buildBodyText(
                  '局所的な脂肪蓄積がある場合。\n'
                  'ダイエットや運動で改善しない脂肪。\n'
                  '健康な成人で、皮膚の弾力が良好な場合。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 合併症とリスク'),
                _buildBodyText(
                  '感染: 手術部位の感染リスク。\n'
                  '出血: 術後の出血や血腫のリスク。\n'
                  '不均一な脂肪除去: 凹凸や不均一な結果のリスク。\n'
                  '皮膚のたるみ: 皮膚の弾力が不十分な場合、たるみが生じるリスク。\n'
                  '神経損傷: 感覚の低下や神経痛。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 最新の研究と技術'),
                _buildBodyText(
                  '最新の研究では、脂肪吸引の安全性と効果を高めるための新しい技術や材料が開発されています。3Dシミュレーションを用いた術前計画や、術後の回復を早めるための新しい縫合技術が注目されています。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('6. 参考文献'),
                _buildReferenceList([
                  'American Society of Plastic Surgeons - Liposuction:\nhttps://www.plasticsurgery.org/cosmetic-procedures/liposuction',
                  'Mayo Clinic - Liposuction:\nhttps://www.mayoclinic.org/tests-procedures/liposuction/about/pac-20384586',
                  'Plastic and Reconstructive Surgery - Tumescent Liposuction:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2000/11000/Tumescent_Liposuction.22.aspx',
                  'Aesthetic Surgery Journal - Tumescent Technique:\nhttps://academic.oup.com/asj/article/30/5/720/227189',
                  'Journal of Cosmetic and Laser Therapy - Laser Liposuction:\nhttps://www.tandfonline.com/doi/abs/10.1080/14764170701361501',
                  'Dermatologic Surgery - Laser-Assisted Liposuction:\nhttps://journals.lww.com/dermatologicsurgery/Abstract/2002/06000/Laser_Assisted_Liposuction.8.aspx',
                  'Aesthetic Plastic Surgery - Ultrasound-Assisted Liposuction:\nhttps://link.springer.com/article/10.1007/s00266-008-9171-4',
                  'Plastic and Reconstructive Surgery - Ultrasound-Assisted Liposuction:\nhttps://journals.lww.com/plasreconsurg/Abstract/2002/01000/Ultrasound_Assisted_Liposuction.13.aspx',
                  'Plastic and Reconstructive Surgery - Advances in Liposuction Techniques:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2018/01000/Advances_in_Liposuction_Techniques.22.aspx',
                  'Aesthetic Surgery Journal - Innovations in Liposuction Technology:\nhttps://academic.oup.com/asj/article/39/5/495/5075782'
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
            text: '・',
            style: GoogleFonts.notoSerif(fontSize: 16, color: Colors.black),
          ),
          TextSpan(
            text: text.split('\n').first,
            style: GoogleFonts.notoSerif(fontSize: 16, color: Colors.black),
          ),
          TextSpan(
            text: '\n${url.toString()}',
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
