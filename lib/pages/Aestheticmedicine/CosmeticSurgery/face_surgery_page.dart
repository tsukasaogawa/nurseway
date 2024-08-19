import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class FaceSurgeryPage extends StatelessWidget {
  const FaceSurgeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('輪郭・顎・エラ・額・小顔整形', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '輪郭・顎・エラ・額・小顔整形の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容外科における輪郭整形に関する総合解説',
                  '2. エラの整形',
                  '3. 額の整形',
                  '4. 小顔整形',
                  '5. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容外科における輪郭整形に関する総合解説'),
                _buildBodyText(
                    '輪郭整形は、顔のバランスを整え、より美しい顔立ちを作るために行われる美容外科手術の一種です。'
                        'エラの整形、額の整形、小顔整形を中心に、それぞれの手術法や合併症、最新の研究について詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. エラの整形'),
                _buildBodyText(
                    '＜概要＞\n'
                        'エラの整形は、顔の下部をスリムにし、よりV字型の顔立ちを作るために行われる手術です。一般的には、骨削り（骨切り）やボトックス注射が用いられます。\n\n'
                        '・骨削り手術\n'
                        '＜手術法＞ 口内からアプローチし、顎の角部の骨を削り取ります。\n'
                        '利点: 永続的な結果が得られる。\n'
                        '欠点: 全身麻酔が必要で、ダウンタイムが長い。\n\n'
                        '・ボトックス注射\n'
                        '＜手術法＞ 咬筋にボトックスを注射し、筋肉の活動を抑制してスリムな顔立ちを作ります。\n'
                        '利点: 非侵襲的でダウンタイムが短い。\n'
                        '欠点: 効果は一時的で、数ヶ月ごとに再注入が必要。\n\n'
                        '＜リスクと合併症＞\n'
                        '感染、神経損傷、非対称な結果、瘢痕形成'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 額の整形'),
                _buildBodyText(
                    '＜概要＞\n'
                        '額の整形は、前頭部の形状を修正し、滑らかなラインを作るための手術です。前頭骨削りやインプラントの挿入が一般的な方法です。\n\n'
                        '・前頭骨削り\n'
                        '＜手術法＞ 額の前頭骨を削り、形状を修正します。\n'
                        '利点: 永続的な結果が得られる。\n'
                        '欠点: 高度な技術が必要で、リスクが高い。\n\n'
                        '・インプラント挿入\n'
                        '＜手術法＞ シリコンやその他の合成材料のインプラントを額に挿入し、形状を整えます。\n'
                        '利点: 即効性があり、効果が持続する。\n'
                        '欠点: インプラントのずれや感染のリスクがある。\n\n'
                        '＜リスクと合併症＞\n'
                        '感染、出血、非対称な結果、インプラントの移動'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 小顔整形'),
                _buildBodyText(
                    '＜概要＞\n'
                        '小顔整形は、顔全体のバランスを整え、より小さく見せるための手術です。脂肪吸引やフェイスリフトが一般的に行われます。\n\n'
                        '・脂肪吸引\n'
                        '＜手術法＞ 頬や顎下の余分な脂肪を吸引して除去します。\n'
                        '利点: 即効性があり、ダウンタイムが比較的短い。\n'
                        '欠点: 一定のリスクがあり、効果が個人差による。\n\n'
                        'フェイスリフト\n'
                        '＜手術法＞ 皮膚を引き上げ、余分な皮膚を除去して顔全体をリフトアップします。\n'
                        '利点: 長期的な結果が得られる。\n'
                        '欠点: 高度な手術で、ダウンタイムが長い。\n\n'
                        '＜リスクと合併症＞\n'
                        '感染、出血、瘢痕、非対称な結果'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 参考文献'),
                _buildReferenceList([
                  'Journal of Cranio-Maxillofacial Surgery - Mandibular Angle Reduction:\nhttps://www.jcmfs.com/article/S1010-5182(19)30120-2/fulltext',
                  'Plastic and Reconstructive Surgery - Botulinum Toxin in Facial Contouring:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2019/04000/Botulinum_Toxin_in_Facial_Contouring.17.aspx',
                  'Aesthetic Plastic Surgery - Forehead Contouring Techniques:\nhttps://journals.sagepub.com/doi/10.1177/1090820X19844656',
                  'Journal of Plastic, Reconstructive & Aesthetic Surgery - Forehead Augmentation with Implants:\nhttps://www.jprasurg.com/article/S1748-6815(18)30345-3/fulltext',
                  'Plastic and Reconstructive Surgery - Techniques in Facial Slimming Surgery:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2018/05000/Techniques_in_Facial_Slimming_Surgery.19.aspx',
                  'Aesthetic Surgery Journal - Liposuction in Facial Rejuvenation:\nhttps://academic.oup.com/asj/article/40/6/645/5800395'
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
