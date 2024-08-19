import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class EyeSurgeryPage extends StatelessWidget {
  const EyeSurgeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('目・二重整形', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '目・二重整形の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 二重整形に関する総合解説',
                  '2. 手術の種類',
                  '   2.1 埋没法',
                  '   2.2 切開法',
                  '3. 手術のプロセス',
                  '4. 合併症とリスク',
                  '5. エビデンスと最新の研究',
                  '6. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 二重整形に関する総合解説'),
                _buildBodyText(
                  '二重整形手術は、美容外科の中でも非常に人気のある手術で、日本を含む多くの国で広く行われています。'
                  'この手術は、眼瞼（まぶた）の外観を改善し、より魅力的な目元を作ることを目的としています。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 手術の種類'),
                _buildSubSectionTitle('2.1 埋没法'),
                _buildBodyText(
                  '＜概要＞\n'
                  '埋没法は、まぶたに糸を通して二重のラインを形成する方法です。切開を伴わないため、傷跡が残りにくく、比較的短期間で回復します。\n'
                  '＜適応＞\n'
                  '皮膚が薄く、たるみが少ない若年者に適しています。\n'
                  '＜メリット＞\n'
                  '回復が早い、ダウンタイムが短い、元に戻しやすい。\n'
                  '＜デメリット＞\n'
                  '糸が緩むことで元に戻る可能性がある。'
                ),
                const SizedBox(height: 10),
                _buildSubSectionTitle('2.2 切開法'),
                _buildBodyText(
                  '＜概要＞\n'
                  '切開法は、まぶたを切開して余分な皮膚や脂肪を取り除き、二重のラインを形成する方法です。\n'
                  '＜適応＞\n'
                  '皮膚が厚く、たるみがある場合や、より確実な結果を求める場合に適しています。\n'
                  '＜メリット＞\n'
                  '永続的な結果が得られやすい、より精密な調整が可能。\n'
                  '＜デメリット＞\n'
                  '回復に時間がかかる、切開跡が残ることがある。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 手術のプロセス'),
                _buildBodyText(
                  'カウンセリング:\n'
                  '患者の希望や期待を詳しく聞き取り、適切な手術法を選択します。'
                  '手術のリスクやダウンタイムについて説明します。\n'
                  'プレオペレーション:\n'
                  '血液検査やアレルギーチェックを行い、手術に適しているか確認します。'
                  '手術当日は、メイクやコンタクトレンズの使用を避けます。\n'
                  '手術:\n'
                  '埋没法の場合、局所麻酔を施し、糸を通して二重のラインを形成します。\n'
                  '切開法の場合、局所麻酔または全身麻酔を施し、まぶたを切開し、必要な処置を行います。\n'
                  'アフターケア:\n'
                  '手術後は、腫れや内出血が生じることがありますが、通常は数日から数週間で回復します。'
                  '患者には、目をこすらない、激しい運動を避ける、感染予防のために清潔を保つなどの指示が与えられます。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 合併症とリスク'),
                _buildBodyText(
                  '感染: 手術部位の感染リスク。\n'
                  '出血: 術後の出血や血腫のリスク。\n'
                  '非対称な結果: 左右のバランスが不均等になるリスク。\n'
                  '過度の腫れや内出血: 手術後の腫れや内出血。\n'
                  'ドライアイ: 涙の分泌が減少し、目が乾燥するリスク。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. エビデンスと最新の研究'),
                _buildBodyText(
                  '最新の研究では、切開法と埋没法の長期的な結果を比較し、患者満足度や合併症の発生率について評価されています。'
                  '近年の技術の進歩により、術後の回復時間が短縮され、自然な結果が得られるようになっています。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('6. 参考文献'),
                _buildReferenceList([
                  'Blepharoplasty: A Comprehensive Guide - Journal of Cosmetic and Laser Therapy:\nhttps://www.tandfonline.com/doi/full/10.1080/14764172.2019.1638965',
                  'Outcomes of Incisional vs. Non-incisional Double Eyelid Surgery - Aesthetic Surgery Journal:\nhttps://academic.oup.com/asj/article/39/2/NP1/5053146',
                  'Patient Satisfaction and Complication Rates in Double Eyelid Surgery - Plastic and Reconstructive Surgery Global Open:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2020/11000/Patient_Satisfaction_and_Complication_Rates_in.17.aspx'
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
