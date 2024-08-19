import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class EyebagSurgeryPage extends StatelessWidget {
  const EyebagSurgeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('目元・クマ・眉下・涙袋整形', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '目元・クマ・眉下・涙袋整形の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 目元整形に関する総合解説',
                  '2. 目元整形',
                  '3. クマ治療',
                  '4. 眉下リフト',
                  '5. 涙袋整形',
                  '6. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 目元整形に関する総合解説'),
                _buildBodyText(
                  '目元の整形は美容外科の中でも非常に需要が高く、多くの患者が若返りや美的改善を求めて治療を受けています。'
                  '以下では、目元の整形について、目元・クマ・眉下・涙袋整形を含めて詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 目元整形'),
                _buildBodyText(
                  '＜概要＞\n'
                  '目元整形は、上まぶたや下まぶたの余分な皮膚、脂肪、筋肉を除去し、若々しい目元を作る手術です。患者の希望により、非侵襲的な手法も用いられます。\n'
                  '＜手術の種類＞\n'
                  '上まぶたの手術: 皮膚のたるみや脂肪の過剰を取り除き、目元を引き締めます。重瞼術も含まれます。\n'
                  '下まぶたの手術: 眼窩脂肪を再配置し、たるみやしわを軽減します。\n'
                  '＜リスクと合併症＞\n'
                  '感染、出血、非対称な結果、ドライアイ、視力の一時的な障害'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. クマ治療'),
                _buildBodyText(
                  '＜概要＞\n'
                  'クマの原因は、遺伝、睡眠不足、アレルギー、老化など多岐にわたります。治療法も原因に応じて異なります。\n'
                  '＜治療法＞\n'
                  'ヒアルロン酸注入: 皮膚をふっくらさせ、クマを目立たなくする方法。\n'
                  'レーザー治療: 皮膚の色素沈着を軽減するために使用。\n'
                  '外科的除去: 皮膚や脂肪を除去して、目の下のたるみを改善。\n'
                  '＜リスクと合併症＞\n'
                  '不均一な結果、感染、出血、アレルギー反応'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 眉下リフト'),
                _buildBodyText(
                  '＜概要＞\n'
                  '眉下リフトは、眉毛の下の皮膚を引き上げ、目元の若々しさを取り戻す手術です。\n'
                  '＜手術の方法＞\n'
                  '皮膚切除: 眉毛の下を切開し、余分な皮膚を除去。\n'
                  '筋膜引き上げ: 筋膜を引き上げ、より自然なリフト効果を得る。\n'
                  '＜リスクと合併症＞\n'
                  '瘢痕形成、感染、神経損傷'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 涙袋整形'),
                _buildBodyText(
                  '＜概要＞\n'
                  '涙袋整形は、目の下のくぼみをヒアルロン酸や脂肪注入でふっくらさせ、若々しい目元を作る非侵襲的な治療法です。\n'
                  '＜手法＞\n'
                  'ヒアルロン酸注入: 涙袋のくぼみをふっくらさせるために使用。\n'
                  '脂肪注入: 自分の脂肪を採取して注入し、長持ちする効果を得る。\n'
                  '＜リスクと合併症＞\n'
                  '血腫、感染、異物反応'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('6. 参考文献'),
                _buildReferenceList([
                  'American Society of Plastic Surgeons (ASPS), "Blepharoplasty - Eyelid Surgery":\nhttps://www.plasticsurgery.org/cosmetic-procedures/eyelid-surgery',
                  'Mayo Clinic, "Dark Circles Under Eyes: Causes and Treatments":\nhttps://www.mayoclinic.org/diseases-conditions/dark-circles-under-eyes/symptoms-causes/syc-20371127',
                  'Plastic and Reconstructive Surgery, "Sub-brow Blepharoplasty for the Treatment of Upper Eyelid Laxity":\nhttps://journals.lww.com/plasreconsurg/Fulltext/2020/05000/Sub_brow_Blepharoplasty_for_the_Treatment_of.15.aspx',
                  'Dermatologic Surgery, "Treatment of Tear Trough Deformity with Hyaluronic Acid Fillers":\nhttps://journals.lww.com/dermatologicsurgery/Fulltext/2018/06000/Treatment_of_Tear_Trough_Deformity_with.19.aspx'
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
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '・',
            style: GoogleFonts.notoSerif(fontSize: 16, color: Colors.black), // 黒色に設定
          ),
          TextSpan(
            text: text,
            style: GoogleFonts.notoSerif(fontSize: 16, color: Colors.black),
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
        child: _buildReferenceTextWithLink(reference),
      )).toList(),
    );
  }

  Widget _buildReferenceTextWithLink(String reference) {
    final parts = reference.split('\n');
    final text = parts[0];
    final url = parts.length > 1 ? parts[1] : '';

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '・',
            style: GoogleFonts.notoSerif(fontSize: 16, color: Colors.black), // 黒色に設定
          ),
          TextSpan(
            text: text,
            style: GoogleFonts.notoSerif(fontSize: 16, color: Colors.black),
          ),
          TextSpan(
            text: url.isNotEmpty ? '\n$url' : '',
            style: GoogleFonts.notoSerif(fontSize: 16, color: Colors.blue),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
          ),
        ],
      ),
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
          padding: const EdgeInsets.symmetric(vertical: 2.0), // 間隔を半分に
          child: Text(
            content,
            style: GoogleFonts.notoSerif(fontSize: 16), // フォントサイズを少し小さく
          ),
        )).toList(),
      ),
    );
  }
}
