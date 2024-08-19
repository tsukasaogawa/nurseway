import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HairTransplantPage extends StatelessWidget {
  const HairTransplantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('植毛・自毛植毛', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '美容医療における植毛・自毛植毛に関する総合解説',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 植毛の手術法',
                  '2. 適応症',
                  '3. 合併症とリスク',
                  '4. 最新の研究と技術',
                  '5. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 植毛の手術法'),
                _buildSubSectionTitle('毛包単位移植法'),
                _buildBodyText(
                    '概要:\n'
                    'FUTは、後頭部から皮膚の帯状片を切除し、そこから毛包単位を分離して移植する方法です。この方法は、一度に多くの毛包を移植できるため、広範囲の薄毛治療に適しています。\n\n'
                    '手術の方法:\n'
                    '・後頭部から帯状片を切除し、ドナー部位を縫合。\n'
                    '・切除した帯状片から毛包単位を顕微鏡下で分離。\n'
                    '・受容部位に小さな切開を入れ、毛包単位を移植。\n\n'
                    '利点:\n'
                    '・高い成功率。\n'
                    '・一度に多くの毛包を移植可能。\n\n'
                    '欠点:\n'
                    '・ドナー部位に線状の瘢痕が残る。\n'
                    '・回復期間が比較的長い。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('毛包単位抽出法'),
                _buildBodyText(
                    '概要:\n'
                    'FUEは、後頭部や側頭部から個別に毛包単位を抽出し、受容部位に移植する方法です。この方法は、ドナー部位に目立つ瘢痕を残さないため、人気があります。\n\n'
                    '手術の方法:\n'
                    '・特殊なパンチを用いて個々の毛包単位を抽出。\n'
                    '・受容部位に小さな切開を入れ、毛包単位を移植。\n\n'
                    '利点:\n'
                    '・瘢痕が目立たない。\n'
                    '・回復期間が比較的短い。\n\n'
                    '欠点:\n'
                    '・一度に移植できる毛包数が少ない。\n'
                    '・手術時間が長い。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 適応症'),
                _buildBodyText(
                    '男性型脱毛症: 遺伝やホルモンの影響で進行する脱毛症。\n'
                    '瘢痕性脱毛症: 外傷や手術、炎症性疾患による瘢痕に伴う脱毛。\n'
                    '非瘢痕性脱毛症: 円形脱毛症やびまん性脱毛症など、瘢痕を伴わない脱毛症。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 合併症とリスク'),
                _buildBodyText(
                    '感染: 手術部位の感染リスク。\n'
                    '出血: 術後の出血や血腫のリスク。\n'
                    '瘢痕形成: FUTにおける線状の瘢痕やFUEにおける小さな点状の瘢痕。\n'
                    '感覚の変化: ドナー部位や受容部位の感覚が変化する可能性。\n'
                    '毛包の脱落: 移植後数週間で一時的に毛が抜ける現象。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 最新の研究と技術'),
                _buildBodyText(
                    '最新の研究では、手術後の回復を早め、移植毛の生着率を高めるための新しい技術や薬剤が開発されています。特に、ロボット支援技術やプレートレットリッチプラズマ（PRP）を用いた治療が注目されています。\n\n'
                ),

                const SizedBox(height: 20),
                _buildSectionTitle('5. 参考文献'),
                _buildReferenceList([
                    '1. Journal of Dermatologic Surgery - Follicular Unit Transplantation Techniques: https://link.springer.com/article/10.1007/s13555-016-0122-5',
                    '2. Plastic and Reconstructive Surgery - Outcomes of FUT: https://journals.lww.com/plasreconsurg/Fulltext/2021/04000/Female_Pattern_Hair_Loss__Why_the_Follicular_Unit.9.aspx',
                    '3. Aesthetic Surgery Journal - Follicular Unit Extraction Techniques: https://journals.lww.com/annalsplasticsurgery/Fulltext/2008/02000/Follicular_Unit_Extraction_in_Hair.3.aspx',
                    '4. Journal of Cosmetic Dermatology - Efficacy of FUE: https://journals.lww.com/plasreconsurg/Fulltext/2021/04000/Female_Pattern_Hair_Loss__Why_the_Follicular_Unit.9.aspx',
                    '5. Journal of Clinical and Aesthetic Dermatology - Advances in Hair Transplantation: https://www.sciencedirect.com/science/article/pii/S1748681506002889',
                    '6. Dermatologic Surgery - Robotic Hair Transplantation: https://link.springer.com/article/10.1007/s13555-016-0122-5',
                    '7. Aesthetic Surgery Journal - Platelet-Rich Plasma in Hair Transplantation: https://journals.lww.com/annalsplasticsurgery/Fulltext/2008/02000/Follicular_Unit_Extraction_in_Hair.3.aspx'
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
