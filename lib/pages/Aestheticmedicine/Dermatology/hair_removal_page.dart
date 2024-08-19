import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HairRemovalPage extends StatelessWidget {
  const HairRemovalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('医療脱毛', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '医療脱毛の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容皮膚科における医療脱毛に関する総合解説',
                  '2. 医療脱毛の基本原理',
                  '   2.1 レーザー脱毛のメカニズム',
                  '   2.2 光脱毛（IPL）のメカニズム',
                  '3. 患者評価と適応症',
                  '4. 施術手順と注意点',
                  '5. 合併症とリスク',
                  '6. 最新の研究と技術',
                  '7. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容皮膚科における医療脱毛に関する総合解説'),
                _buildBodyText(
                    '医療脱毛は、美容皮膚科において重要な施術の一つであり、安全で効果的な脱毛を提供するために、医療従事者はその理論と技術を十分に理解する必要があります。本ガイドでは、医療脱毛に関する主要な手術法、適応症、合併症、最新の研究について詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 医療脱毛の基本原理'),
                _buildSubSectionTitle('2.1 レーザー脱毛のメカニズム'),
                _buildBodyText(
                    '概要:\n'
                        'レーザー脱毛は、特定の波長のレーザー光を毛根に照射し、メラニン色素に吸収されることで毛包を破壊し、永久脱毛効果を得る方法です。\n\n'
                        '主要なレーザーの種類:\n\n'
                        '- アレキサンドライトレーザー（755nm）: メラニンに対する高い吸収率があり、浅い毛に効果的。\n'
                        '- ダイオードレーザー（810nm）: 幅広い肌タイプに対応しやすく、深い毛にも効果がある。\n'
                        '- Nd:YAGレーザー（1064nm）: 深部に届きやすく、色素沈着のリスクが低いため濃い肌色に適している。\n\n'
                        '利点:\n\n'
                        '- 高い効果と長期的な結果が得られる。\n'
                        '- 広範囲の皮膚タイプに対応可能。\n\n'
                        '欠点:\n\n'
                        '- 照射時の痛みや熱感。\n'
                        '- 不適切な使用による火傷や色素沈着のリスク。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.2 光脱毛（IPL）のメカニズム'),
                _buildBodyText(
                    '概要:\n'
                        '光脱毛は、広範囲の光エネルギーを毛根に照射し、毛包を加熱して毛の再生を抑制する方法です。IPL（Intense Pulsed Light）は特定の波長の光をフィルターで調整して使用します。\n\n'
                        '利点:\n\n'
                        '- 幅広い肌タイプと毛質に対応可能。\n'
                        '- 比較的痛みが少ない。\n\n'
                        '欠点:\n\n'
                        '- 効果がやや劣る場合がある。\n'
                        '- 施術回数が多くなることがある。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 患者評価と適応症'),
                _buildBodyText(
                    '皮膚タイプの評価:\n'
                        'Fitzpatrick分類を用いて皮膚の反応性を評価し、適切なレーザー設定を選定します。\n\n'
                        '毛質の評価:\n'
                        '毛の太さ、密度、色を基に治療プランを立てます。\n\n'
                        '適応症:\n\n'
                        '- 美的な理由：過剰な体毛や顔の毛を除去する。\n'
                        '- 機能的な理由：毛による摩擦や不快感の軽減。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 施術手順と注意点'),
                _buildBodyText(
                    '前処理:\n'
                        '- 施術前の剃毛。\n'
                        '- 皮膚の清潔化と冷却ジェルの使用。\n\n'
                        '照射手技:\n'
                        '- 適切なエネルギー設定。\n'
                        '- 均一な照射と冷却装置の併用。\n\n'
                        '後処置:\n'
                        '- 冷却と保湿。\n'
                        '- 紫外線防止策。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 合併症とリスク'),
                _buildBodyText(
                    '短期的副作用:\n'
                        '- 発赤、腫れ、軽度の痛み。\n\n'
                        '長期的リスク:\n'
                        '- 色素沈着、瘢痕形成、毛の再生。\n\n'
                        '緊急対応:\n'
                        '- 重度の火傷や感染症の兆候に対する迅速な対応。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('6. 最新の研究と技術'),
                _buildBodyText(
                    '最新技術:\n'
                        '- 新しい波長やレーザー技術の開発。\n'
                        '- 非侵襲的なレーザー脱毛機器の導入。\n\n'
                ),
                const SizedBox(height: 20),

                _buildSectionTitle('7. 参考文献'),
                _buildReferenceList([
                  'Journal of the American Academy of Dermatology - Laser Hair Removal:\nhttps://www.jaad.org/article/S0190-9622(15)02418-6/fulltext',
                  'Lasers in Surgery and Medicine - Comparative Study on Laser Hair Removal:\nhttps://onlinelibrary.wiley.com/doi/10.1002/lsm.22150',
                  'Journal of Cosmetic and Laser Therapy - IPL Hair Removal:\nhttps://www.tandfonline.com/doi/full/10.3109/14764172.2013.796558',
                  'Journal of Clinical and Aesthetic Dermatology - Patient Selection for Laser Hair Removal:\nhttps://www.ncbi.nlm.nih.gov/pmc/articles/PMC2923959/',
                  'Dermatologic Surgery - Pre and Post Laser Treatment Care:\nhttps://journals.lww.com/dermatologicsurgery/Fulltext/2016/03000/Pre_and_Post_Laser_Treatment_Care.12.aspx',
                  'Journal of Dermatological Treatment - Complications of Laser Hair Removal:\nhttps://www.tandfonline.com/doi/full/10.3109/09546634.2014.959482',
                  'Lasers in Surgery and Medicine - Recent Advances in Laser Hair Removal:\nhttps://onlinelibrary.wiley.com/doi/10.1002/lsm.22345',
                  'Dermatologic Clinics - Innovations in Hair Removal Technology:\nhttps://www.derm.theclinics.com/article/S0733-8635(20)30053-7/fulltext'
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
