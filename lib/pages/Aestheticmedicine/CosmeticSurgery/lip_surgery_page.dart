import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LipSurgeryPage extends StatelessWidget {
  const LipSurgeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('口元・唇の整形・人中短縮', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '口元・唇の整形・人中短縮の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容外科における口元・唇の整形および人中短縮手術に関する総合解説',
                  '2. 唇の整形',
                  '3. 人中短縮術',
                  '4. 唇のリフト',
                  '5. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容外科における口元・唇の整形および人中短縮手術に関する総合解説'),
                _buildBodyText(
                  '美容外科において、口元や唇の整形手術は顔のバランスを改善し、魅力的な表情を作るために重要な役割を果たします。以下に、主要な手術法、適応症、合併症、最新の研究について詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 唇の整形'),
                _buildBodyText(
                  '＜概要＞\n'
                  '唇の整形は、唇のボリュームを増やし、形状を整えるために行われる手術です。主にヒアルロン酸フィラーや脂肪注入が使用されます。\n\n'
                  '＜手術の種類＞\n\n'
                  '・ヒアルロン酸注入\n'
                  '＜手術法＞ ヒアルロン酸を唇に注入してボリュームを増やし、形状を整えます。\n'
                  '＜利点＞ 即効性があり、ダウンタイムが短い。\n'
                  '＜欠点＞ 効果は一時的で、数ヶ月ごとに再注入が必要。\n\n'
                  '・脂肪注入\n'
                  '＜手術法＞ 自身の脂肪を採取し、唇に注入します。\n'
                  '＜利点＞ 自然な結果が得られ、アレルギーのリスクが低い。\n'
                  '＜欠点＞ 吸収率が個人差により変動し、再注入が必要な場合がある。\n\n'
                  '＜リスクと合併症＞\n'
                  '感染、血腫、非対称な結果、アレルギー反応'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 人中短縮術'),
                _buildBodyText(
                  '＜概要＞\n'
                  '人中短縮術は、上唇と鼻の間の距離を短くし、若々しくバランスの取れた口元を作るために行われる手術です。\n\n'
                  '＜手術の種類＞\n\n'
                  '・直線切開法\n'
                  '＜手術法＞ 鼻の下を直線的に切開し、余分な皮膚を除去して縫合します。\n'
                  '＜利点＞ 簡便で効果が高い。\n'
                  '＜欠点＞ 切開跡が目立つことがある。\n\n'
                  '・カーブ切開法\n'
                  '＜手術法＞ 鼻の下をカーブ状に切開し、自然なラインで余分な皮膚を除去して縫合します。\n'
                  '＜利点＞ 切開跡が目立ちにくい。\n'
                  '＜欠点＞ 技術的に難易度が高い。\n\n'
                  '＜リスクと合併症＞\n'
                  '感染、出血、瘢痕形成、非対称な結果'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 唇のリフト'),
                _buildBodyText(
                  '＜概要＞\n'
                  '唇のリフトは、上唇を引き上げて形状を整え、口元を若返らせる手術です。\n\n'
                  '＜手術の種類＞\n\n'
                  '・ブルホーンリフト\n'
                  '＜手術法＞ 鼻孔の下部を切開し、上唇を引き上げて縫合します。\n'
                  '＜利点＞ 効果が長持ちし、自然な仕上がりが得られる。\n'
                  '＜欠点＞ 切開跡が目立つことがある。\n\n'
                  '・イタリアンリフト\n'
                  '＜手術法＞ 鼻孔の両側を小さく切開し、上唇を引き上げます。\n'
                  '＜利点＞ 切開跡が目立ちにくい。\n'
                  '＜欠点＞ 効果がやや限定的である場合がある。\n\n'
                  '＜リスクと合併症＞\n'
                  '感染、出血、非対称な結果、瘢痕形成'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 参考文献'),
                _buildReferenceList([
                  'Plastic and Reconstructive Surgery - Lip Augmentation Techniques:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2018/01000/Lip_Augmentation_Techniques.15.aspx',
                  'Aesthetic Surgery Journal - Hyaluronic Acid Fillers in Lip Augmentation:\nhttps://academic.oup.com/asj/article/38/7/745/5086768',
                  'Journal of Cosmetic and Laser Therapy - Techniques in Philtrum Reduction:\nhttps://www.tandfonline.com/doi/abs/10.1080/14764172.2019.7589',
                  'Plastic and Reconstructive Surgery - Outcomes of Philtrum Reduction:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2018/04000/Outcomes_of_Philtrum_Reduction.17.aspx',
                  'Aesthetic Plastic Surgery - Lip Lift Techniques:\nhttps://journals.sagepub.com/doi/10.1177/1090820X19844656',
                  'Facial Plastic Surgery Clinics of North America - Advances in Lip Lift Surgery:\nhttps://www.sciencedirect.com/science/article/pii/S1064740618300428'
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
            text: '\n$url',
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
