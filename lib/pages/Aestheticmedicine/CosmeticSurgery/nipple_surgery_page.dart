import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class NippleSurgeryPage extends StatelessWidget {
  const NippleSurgeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('乳首・乳輪の整形', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '乳首・乳輪の整形の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容外科における乳首・乳輪の整形に関する総合解説',
                  '2. 乳首の整形',
                  '   2.1 乳首縮小術',
                  '   2.2 陥没乳頭の矯正術',
                  '3. 乳輪の整形',
                  '   3.1 乳輪縮小術',
                  '4. 合併症とリスク',
                  '5. 最新の研究と技術',
                  '6. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容外科における乳首・乳輪の整形に関する総合解説'),
                _buildBodyText(
                  '乳首および乳輪の整形手術は、乳房の審美的な改善や機能的な問題の解決を目的として行われます。以下に、主要な手術法、適応症、合併症、最新の研究について詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 乳首の整形'),
                _buildSubSectionTitle('2.1 乳首縮小術'),
                _buildBodyText(
                  '＜概要＞\n'
                  '乳首縮小術は、長さや直径の大きい乳首を小さくするための手術です。乳首が目立ちすぎることや衣服に擦れて痛みを感じることを改善します。\n\n'
                  '＜手術の方法＞\n'
                  '部分切除法: 乳首の一部を切除し、残りの乳首を再縫合して小さくします。\n'
                  '全周切除法: 乳首の基部を一周切開し、不要な部分を切除して再縫合します。\n\n'
                  '＜利点＞\n'
                  '永続的な結果が得られる。\n'
                  '自然な形状を維持できる。\n\n'
                  '＜欠点＞\n'
                  '感覚の低下のリスク。\n'
                  '授乳機能への影響の可能性。\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.2 陥没乳頭の矯正術'),
                _buildBodyText(
                  '＜概要＞\n'
                  '陥没乳頭の矯正術は、内側に引っ込んだ乳首を外側に引き出す手術です。この状態は審美的な問題だけでなく、授乳時の問題を引き起こすこともあります。\n\n'
                  '＜手術の方法＞\n'
                  '単純切開法: 乳首の基部を切開して引き出し、再縫合します。\n'
                  '持続引き出し法: 特殊な器具を用いて乳首を持続的に引き出し、皮膚を伸ばします。\n\n'
                  '＜利点＞\n'
                  '授乳機能の改善。\n'
                  '見た目の改善。\n\n'
                  '＜欠点＞\n'
                  '感覚の低下のリスク。\n'
                  '再発の可能性。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 乳輪の整形'),
                _buildSubSectionTitle('3.1 乳輪縮小術'),
                _buildBodyText(
                  '＜概要＞\n'
                  '乳輪縮小術は、広がった乳輪を小さくするための手術です。審美的な理由や乳輪の目立ちすぎを改善するために行われます。\n\n'
                  '＜手術の方法＞\n'
                  'ドーナツ切除法: 乳輪の周囲をドーナツ状に切開し、余分な皮膚を除去して再縫合します。\n\n'
                  '＜利点＞\n'
                  '永続的な結果が得られる。\n'
                  '乳房の全体的なバランスを改善。\n\n'
                  '＜欠点＞\n'
                  '縫合跡が残る可能性。\n'
                  '感覚の低下のリスク。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 合併症とリスク'),
                _buildBodyText(
                  '感染: 手術部位の感染リスク。\n'
                  '出血: 術後の出血や血腫のリスク。\n'
                  '感覚の変化: 乳首および乳輪の感覚が低下するリスク。\n'
                  '非対称性: 左右のバランスが不均等になるリスク。\n'
                  '瘢痕形成: 縫合跡が目立つ可能性。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 最新の研究と技術'),
                _buildBodyText(
                  '最新の研究では、手術後の回復を早め、合併症のリスクを減少させるための新しい縫合技術や術後管理法が開発されています。また、3Dシミュレーションを用いた術前計画が精度を高めています。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('6. 参考文献'),
                _buildReferenceList([
                  'Plastic and Reconstructive Surgery - Nipple Reduction Techniques:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2019/05000/Nipple_Reduction_Techniques.14.aspx',
                  'Aesthetic Surgery Journal - Outcomes of Nipple Reduction:\nhttps://academic.oup.com/asj/article/40/4/745/5773453',
                  'Journal of Plastic, Reconstructive & Aesthetic Surgery - Correction of Inverted Nipples:\nhttps://academic.oup.com/asj/article/39/8/833/5543725',
                  'Plastic and Reconstructive Surgery - Advances in Nipple and Areola Surgery:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2020/09000/Advances_in_Nipple_and_Areola_Surgery.23.aspx',
                  'Aesthetic Surgery Journal - Innovations in Nipple and Areola Surgery:\nhttps://academic.oup.com/asj/article/41/7/899/6193046'
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
