import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class TattooRemovalPage extends StatelessWidget {
  const TattooRemovalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('タトゥー除去', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    'タトゥー除去の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 総合解説',
                  '2. レーザー除去法',
                  '3. 外科的除去法',
                  '4. ダーモブレーション法',
                  '5. 化学的剥離法',
                  '6. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 総合解説'),
                _buildBodyText(
                    'タトゥー除去は、美容外科の分野において広く行われている手術の一つであり、主に美容的な理由から行われます。タトゥー除去は、患者の希望に応じて異なる手法が適用され、各手法にはそれぞれの利点とリスクがあります。以下に、主要な手術法、適応症、合併症、最新の研究について詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. レーザー除去法 '),
                _buildBodyText(
                    '＜概要＞\n'
                    'レーザー除去法は、タトゥーの色素を破壊するために高強度の光を使用する方法です。特定の波長のレーザーが皮膚に照射され、タトゥーのインク粒子を分解します。\n\n'
                    '＜手術の方法＞\n'
                    'レーザーをタトゥーの部位に照射し、インクを破壊します。破壊されたインクは体内の免疫システムによって自然に排出されます。\n\n'
                    '＜利点＞\n'
                    '非侵襲的である。\n'
                    '回復期間が短い。\n'
                    '色素の異なるタトゥーにも適用可能。\n\n'
                    '＜欠点＞\n'
                    '複数回の治療が必要。\n'
                    '色素沈着や皮膚の色素脱失のリスク。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 外科的除去法'),
                _buildBodyText(
                    '＜概要＞\n'
                    '外科的除去法は、タトゥーのある皮膚を切除し、縫合する方法です。小さなタトゥーに適しています。\n\n'
                    '＜手術の方法＞\n'
                    '局所麻酔下でタトゥーの部分の皮膚を切除し、縫合します。大きなタトゥーの場合、皮膚移植が必要なこともあります。\n\n'
                    '＜利点＞\n'
                    '即座にタトゥーを完全に除去できる。\n'
                    '一度の手術で完了する。\n\n'
                    '＜欠点＞\n'
                    '縫合跡が残る可能性。\n'
                    '大きなタトゥーには適さない。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. ダーモブレーション法'),
                _buildBodyText(
                    '＜概要＞\n'
                    'ダーモブレーションは、タトゥーのある皮膚層を機械的に削り取る方法です。インクが皮膚表面に近い場合に有効です。\n\n'
                    '＜手術の方法＞\n'
                    '研磨器具を使用して皮膚の表層を削り、タトゥーのインクを除去します。\n\n'
                    '＜利点＞\n'
                    '比較的簡単な手術。\n'
                    '複数の色素に対応可能。\n\n'
                    '＜欠点＞\n'
                    '皮膚の瘢痕が残るリスク。\n'
                    '回復期間が長い。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 化学的剥離法'),
                _buildBodyText(
                    '＜概要＞\n'
                    '化学的剥離は、酸性の溶液を使用して皮膚の表層を化学的に剥離する方法です。\n\n'
                    '＜手術の方法＞\n'
                    '酸性溶液をタトゥーの部位に塗布し、皮膚層を剥離してインクを除去します。\n\n'
                    '＜利点＞\n'
                    '比較的安価。\n'
                    '自宅で行うことができる。\n\n'
                    '＜欠点＞\n'
                    '効果が不確実で、複数回の治療が必要。\n'
                    '化学やけどのリスク。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('6. 参考文献'),
                _buildReferenceList([
                  'American Society for Laser Medicine and Surgery - Laser Tattoo Removal:\nhttps://www.aslms.org/',
                  'Journal of Clinical and Aesthetic Dermatology - Laser Tattoo Removal: A Review:\nhttps://www.ncbi.nlm.nih.gov/pmc/articles/PMC2923956/',
                  'British Journal of Plastic Surgery - Surgical Techniques for Tattoo Removal:\nhttps://www.bjpsjournal.com/',
                  'Journal of Dermatologic Surgery and Oncology - Dermabrasion for Tattoo Removal:\nhttps://journals.lww.com/dermatologicsurgery/pages/default.aspx',
                  'American Academy of Dermatology - Chemical Peels for Tattoo Removal:\nhttps://www.aad.org/'
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
