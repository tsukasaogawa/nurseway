import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class NavelSurgeryPage extends StatelessWidget {
  const NavelSurgeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('へそ形成', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    'へそ形成の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容外科におけるへそ形成に関する総合解説',
                  '2. へそ形成の手術法',
                  '   2.1 切開法',
                  '   2.2 非切開法',
                  '3. 適応症',
                  '4. 合併症とリスク',
                  '5. 最新の研究と技術',
                  '6. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容外科におけるへそ形成に関する総合解説'),
                _buildBodyText(
                    'へそ形成術は、美的改善を目的としてへその形状や位置を修正する手術です。へそ形成は、特に腹部整形や体重減少後の皮膚のたるみを解消する際に重要な手術の一部として行われます。以下に、へそ形成術の主要な手術法、適応症、合併症、最新の研究について詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. へそ形成の手術法'),
                _buildSubSectionTitle('2.1 切開法'),
                _buildBodyText(
                    '＜概要＞\n'
                    '切開法は、へその形状や位置を直接修正するために行われる方法です。余分な皮膚や脂肪を取り除き、へその形状を再構築します。\n\n'
                    '＜手術の方法＞\n'
                    'へその周囲を切開し、余分な皮膚や脂肪を除去。\n'
                    '必要に応じて、へその位置を変更し、新たな位置に固定。\n'
                    '皮膚を再縫合して形状を整える。\n\n'
                    '＜利点＞\n'
                    '永続的な結果が得られる。\n'
                    '正確な形状と位置の調整が可能。\n\n'
                    '＜欠点＞\n'
                    '縫合跡が残る可能性。\n'
                    '回復期間が比較的長い。\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.2 非切開法'),
                _buildBodyText(
                    '＜概要＞\n'
                    '非切開法は、皮膚を切開せずにへその形状を修正する方法です。主に、へその周囲の皮膚を引き締めるためにレーザーやラジオ波を用います。\n\n'
                    '＜手術の方法＞\n'
                    'レーザーまたはラジオ波を用いて、皮膚を引き締め、へその形状を整える。\n'
                    '必要に応じて、フィラーを注入してボリュームを増加。\n\n'
                    '＜利点＞\n'
                    'ダウンタイムが短い。\n'
                    '縫合跡が残らない。\n\n'
                    '＜欠点＞\n'
                    '効果が一時的で、複数回の治療が必要な場合がある。\n'
                    '大幅な形状変更には適さない。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 適応症'),
                _buildBodyText(
                    'へその形状に対する美的な不満。\n'
                    '腹部整形後のへその位置や形状の改善。\n'
                    '出産や体重変動後のへそのたるみや変形。\n'
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
                    '最新の研究では、手術後の回復を早め、合併症のリスクを減少させるための新しい技術や材料が開発されています。3Dシミュレーションを用いた術前計画や、レーザー技術を用いた非侵襲的な治療法が注目されています。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('6. 参考文献'),
                _buildReferenceList([
                  'Plastic and Reconstructive Surgery - Umbilicoplasty Techniques:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2015/01000/Umbilicoplasty_Techniques.19.aspx',
                  'Aesthetic Surgery Journal - Incisional Umbilicoplasty:\nhttps://academic.oup.com/asj/article/38/3/337/4940733',
                  'Journal of Cosmetic and Laser Therapy - Non-incisional Umbilicoplasty:\nhttps://www.tandfonline.com/doi/abs/10.1080/14764170701361501',
                  'Dermatologic Surgery - Laser-Assisted Umbilicoplasty:\nhttps://journals.lww.com/dermatologicsurgery/Abstract/2008/04000/Laser_Assisted_Umbilicoplasty.15.aspx',
                  'Plastic and Reconstructive Surgery - Advances in Umbilicoplasty Techniques:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2018/05000/Advances_in_Umbilicoplasty_Techniques.14.aspx',
                  'Aesthetic Surgery Journal - Innovations in Umbilicoplasty:\nhttps://academic.oup.com/asj/article/41/5/493/5674587'
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
