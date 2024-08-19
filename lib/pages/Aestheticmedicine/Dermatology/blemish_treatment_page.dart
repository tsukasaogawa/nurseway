import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BlemishTreatmentPage extends StatelessWidget {
  const BlemishTreatmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('シミ取り・肝斑・毛穴治療', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    'シミ取り・肝斑・毛穴治療の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容皮膚科におけるシミ取り・肝斑・毛穴治療に関する総合解説',
                  '2. シミ取り治療',
                  '   2.1 基本原理',
                  '   2.2 治療手順',
                  '3. 肝斑治療',
                  '   3.1 基本原理',
                  '   3.2 治療手順',
                  '4. 毛穴治療',
                  '   4.1 基本原理',
                  '   4.2 治療手順',
                  '5. 合併症とリスク管理',
                  '6. 最新の研究と技術',
                  '7. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容皮膚科におけるシミ取り・肝斑・毛穴治療に関する総合解説'),
                _buildBodyText(
                    'シミ取り、肝斑、および毛穴治療は、美容皮膚科において患者の見た目と自信を向上させるために重要な施術です。これらの治療法に関する基本原理、適応、合併症、最新の研究について詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. シミ取り治療'),
                _buildSubSectionTitle('2.1 基本原理'),
                _buildBodyText(
                    '概要:\n'
                        'シミ（色素斑）は、紫外線や老化、ホルモンバランスの乱れなどによって皮膚にメラニンが過剰に沈着することにより発生します。シミ取り治療は、この過剰なメラニンを除去することを目的とします。\n\n'
                        '主要な治療法:\n\n'
                        '- レーザー治療: Qスイッチレーザーやピコ秒レーザーを使用して、メラニン色素を破壊する。\n'
                        '- ケミカルピーリング: 酸性の溶液を使用して表皮を剥離し、メラニンを除去する。\n'
                        '- トピカル治療: ハイドロキノンやトレチノインなどの外用薬を使用してメラニン生成を抑制する。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.2 治療手順'),
                _buildBodyText(
                    '準備:\n\n'
                        '- 施術前の皮膚評価。\n'
                        '- トピカル治療の場合は、事前に皮膚の適応を確認。\n\n'
                        '施術:\n\n'
                        '- レーザー治療: 施術部位にレーザーを照射。\n'
                        '- ケミカルピーリング: 酸性溶液を塗布し、一定時間放置後に中和。\n'
                        '- トピカル治療: 外用薬を適用する。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 肝斑治療'),
                _buildSubSectionTitle('3.1 基本原理'),
                _buildBodyText(
                    '概要:\n'
                        '肝斑は、特に女性に多く見られる顔面の色素沈着であり、ホルモンバランスの変化や紫外線が原因とされています。治療は、メラニン生成の抑制と既存の色素の除去を目指します。\n\n'
                        '主要な治療法:\n\n'
                        '- トピカル治療: ハイドロキノン、トレチノイン、アゼライン酸などの外用薬を使用。\n'
                        '- レーザー治療: ピコ秒レーザーや低出力のQスイッチレーザーを用いる。\n'
                        '- 経口治療: トラネキサム酸の内服によるメラニン生成の抑制。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('3.2 治療手順'),
                _buildBodyText(
                    '準備:\n\n'
                        '- 施術前の皮膚評価とホルモンバランスの確認。\n'
                        '- トピカル治療や経口治療の場合、適切な使用指導。\n\n'
                        '施術:\n\n'
                        '- トピカル治療: 外用薬を皮膚に適用。\n'
                        '- レーザー治療: 低出力レーザーを照射。\n'
                        '- 経口治療: トラネキサム酸の内服を指導。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 毛穴治療'),
                _buildSubSectionTitle('4.1 基本原理'),
                _buildBodyText(
                    '概要:\n'
                        '毛穴の開きは、皮脂分泌過多や老化による皮膚の弾力低下が原因です。毛穴治療は、皮脂分泌の抑制と皮膚の引き締めを目指します。\n\n'
                        '主要な治療法:\n\n'
                        '- レーザー治療: フラクショナルレーザーやエルビウムヤグレーザーを使用して皮膚を引き締める。\n'
                        '- マイクロニードリング: 微細な針を使用してコラーゲン生成を促進。\n'
                        '- トピカル治療: レチノイドやサリチル酸を使用して皮脂分泌を抑制。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('4.2 治療手順'),
                _buildBodyText(
                    '準備:\n\n'
                        '- 施術前の皮膚評価。\n'
                        '- トピカル治療の場合は、事前に皮膚の適応を確認。\n\n'
                        '施術:\n\n'
                        '- レーザー治療: 施術部位にフラクショナルレーザーを照射。\n'
                        '- マイクロニードリング: 施術部位に微細な針を用いて治療。\n'
                        '- トピカル治療: 外用薬を適用する。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 合併症とリスク管理'),
                _buildBodyText(
                    'シミ取り治療:\n\n'
                        '- 赤み: 照射直後の一時的な発赤。\n'
                        '- 色素沈着: 特に色素沈着しやすい皮膚タイプにおいてリスクが高い。\n\n'
                    '肝斑治療:\n\n'
                        '- 色素沈着: レーザー治療後の色素沈着リスク。\n'
                        '- 乾燥: トピカル治療による皮膚の乾燥。\n\n'
                    '毛穴治療:\n\n'
                        '- 赤み: 照射直後の一時的な発赤。\n'
                        '- 瘢痕形成: 不適切な施術による瘢痕形成の可能性。\n\n'
                    'リスク管理:\n\n'
                        '- 適切な施術前評価とアフターケア。\n'
                        '- 患者への適切な説明と同意取得。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('6. 最新の研究と技術'),
                _buildBodyText(
                    '最新技術:\n\n'
                        '- 新型レーザー: 効果が高く、ダウンタイムが短い新型レーザーの開発。\n'
                        '- マルチモーダル治療: 複数の治療法を組み合わせたマルチモーダル治療の研究。\n\n'
                    '研究動向:\n\n'
                        '- 皮膚の色素沈着メカニズム: 色素沈着の発生メカニズムに関する研究。\n'
                        '- コラーゲン生成の促進: 毛穴治療におけるコラーゲン生成を促進する新しい技術の開発。\n\n'
                ),

                const SizedBox(height: 20),
                _buildSectionTitle('7. 参考文献'),
                _buildReferenceList([
                  'Journal of the American Academy of Dermatology - Laser Treatment for Pigmented Lesions:\nhttps://www.jaad.org/article/S0190-9622(15)02145-7/fulltext',
                  'Lasers in Surgery and Medicine - Q-switched Laser Treatment Protocols:\nhttps://onlinelibrary.wiley.com/doi/10.1002/lsm.22607',
                  'Journal of Clinical and Aesthetic Dermatology - Treatment of Melasma:\nhttps://jcadonline.com/treatment-melasma/',
                  'Lasers in Surgery and Medicine - Laser Treatment for Melasma:\nhttps://onlinelibrary.wiley.com/doi/10.1002/lsm.23485',
                  'Journal of Cosmetic and Laser Therapy - Treatments for Enlarged Pores:\nhttps://www.tandfonline.com/doi/full/10.3109/14764172.2015.1037766',
                  'Dermatologic Surgery - Fractional Laser Treatment for Enlarged Pores:\nhttps://journals.lww.com/dermatologicsurgery/Fulltext/2014/01000/Fractional_Laser_Treatment_for_Enlarged_Pores.9.aspx',
                  'Dermatologic Surgery - Complications in Pigment and Pore Treatments:\nhttps://journals.lww.com/dermatologicsurgery/Fulltext/2018/07000/Complications_in_Pigment_and_Pore_Treatments.18.aspx',
                  'Journal of Dermatological Science - Advances in Pigment and Pore Treatments:\nhttps://www.jdsjournal.com/article/S0923-1811(17)30142-2/fulltext',
                  'International Journal of Molecular Sciences - Mechanisms of Hyperpigmentation and Pore Enlargement:\nhttps://www.mdpi.com/1422-0067/20/5/1102'
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
            text: text.split('\n').first + '\n',
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
