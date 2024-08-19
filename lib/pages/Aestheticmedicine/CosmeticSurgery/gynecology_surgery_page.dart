import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class GynecologySurgeryPage extends StatelessWidget {
  const GynecologySurgeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('婦人科形成', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '婦人科形成の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容外科における婦人科形成に関する総合解説',
                  '2. 婦人科形成の手術法',
                  '   2.1 小陰唇縮小術',
                  '   2.2 陰核包皮形成術',
                  '   2.3 膣形成術',
                  '3. 適応症',
                  '4. 合併症とリスク',
                  '5. 最新の研究と技術',
                  '6. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容外科における婦人科形成に関する総合解説'),
                _buildBodyText(
                  '婦人科形成は、女性器の形状や機能を改善し、患者の生活の質を向上させるために行われる美容外科手術です。以下に、主要な手術法、適応症、合併症、最新の研究について詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 婦人科形成の手術法'),
                _buildSubSectionTitle('2.1 小陰唇縮小術'),
                _buildBodyText(
                  '＜概要＞\n'
                  '小陰唇縮小術は、小陰唇（内側の陰唇）が大きすぎる、または左右非対称である場合に、そのサイズや形状を修正する手術です。美的な理由や機能的な理由（摩擦や不快感の軽減）で行われます。\n'
                  '＜手術の方法＞\n'
                  '切除法: 小陰唇の余分な部分を切除し、再縫合します。\n'
                  'くり抜き法: 小陰唇の中央部をくり抜いて縫合し、自然な形状を保ちます。\n'
                  '＜利点＞\n'
                  '長期的な結果が得られる。\n'
                  '自然な見た目が維持される。\n'
                  '＜欠点＞\n'
                  '縫合跡が残る可能性。\n'
                  '感覚の低下のリスク。\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.2 陰核包皮形成術'),
                _buildBodyText(
                  '＜概要＞\n'
                  '陰核包皮形成術は、陰核を覆う皮膚の過剰な部分を除去し、陰核の露出を増やす手術です。性感向上や美的改善を目的としています。\n'
                  '＜手術の方法＞\n'
                  '小切開を行い、余分な皮膚を切除し、再縫合します。\n'
                  '＜利点＞\n'
                  '性的感度の向上。\n'
                  '自然な外観の維持。\n'
                  '＜欠点＞\n'
                  '感覚の変化のリスク。\n'
                  '縫合跡が残る可能性。\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.3 膣形成術'),
                _buildBodyText(
                  '＜概要＞\n'
                  '膣形成術は、出産や老化による膣の緩みを修正し、膣の引き締めを図る手術です。性機能の向上や美的改善を目的としています。\n'
                  '＜手術の方法＞\n'
                  '膣壁の余分な組織を切除し、筋肉や組織を引き締めて縫合します。\n'
                  '＜利点＞\n'
                  '性的満足度の向上。\n'
                  '膣の引き締め。\n'
                  '＜欠点＞\n'
                  '手術後の回復期間が長い。\n'
                  '感覚の変化のリスク。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 適応症'),
                _buildBodyText(
                  '小陰唇の大きさや形状に不満がある場合。\n'
                  '陰核の過剰な包皮による不快感や性感低下。\n'
                  '膣の緩みによる性的満足度の低下や不快感。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 合併症とリスク'),
                _buildBodyText(
                  '感染: 手術部位の感染リスク。\n'
                  '出血: 術後の出血や血腫のリスク。\n'
                  '感覚の変化: 感覚が低下または変化するリスク。\n'
                  '非対称性: 左右のバランスが不均等になるリスク。\n'
                  '瘢痕形成: 縫合跡が目立つ可能性。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 最新の研究と技術'),
                _buildBodyText(
                  '最新の研究では、手術後の回復を早め、合併症のリスクを減少させるための新しい縫合技術や術後管理法が開発されています。また、レーザー技術を用いた非侵襲的な治療法も注目されています。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('6. 参考文献'),
                _buildReferenceList([
                  'Journal of Sexual Medicine - Labiaplasty Techniques and Outcomes:\nhttps://www.jsm.jsexmed.org/article/S1743-6095(17)31537-7/fulltext',
                  'Plastic and Reconstructive Surgery - Labiaplasty:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2017/02000/Labiaplasty.12.aspx',
                  'Aesthetic Surgery Journal - Clitoral Hood Reduction:\nhttps://academic.oup.com/asj/article/35/8/904/3112524',
                  'Plastic and Reconstructive Surgery - Clitoral Hood Reduction Techniques:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2015/01000/Clitoral_Hood_Reduction_Techniques.10.aspx',
                  'Journal of Minimally Invasive Gynecology - Vaginoplasty Outcomes:\nhttps://www.jmig.org/article/S1553-4650(19)30751-8/fulltext',
                  'Plastic and Reconstructive Surgery - Vaginoplasty Techniques:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2014/03000/Vaginoplasty_Techniques.17.aspx',
                  'Plastic and Reconstructive Surgery - Advances in Labiaplasty Techniques:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2016/05000/Advances_in_Labiaplasty_Techniques.13.aspx',
                  'Aesthetic Surgery Journal - Innovations in Vaginal Rejuvenation:\nhttps://academic.oup.com/asj/article/38/4/406/5091342'
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
            recognizer: TapGestureRecognizer()..onTap = () async {
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
