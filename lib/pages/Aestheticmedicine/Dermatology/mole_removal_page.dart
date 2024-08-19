import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MoleRemovalPage extends StatelessWidget {
  const MoleRemovalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ほくろ除去・あざ治療・イボ治療', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    'ほくろ除去・あざ治療・イボ治療の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容皮膚科におけるほくろ除去・あざ治療・イボ治療に関する総合解説',
                  '2. ほくろ除去',
                  '   2.1 ほくろの診断と評価',
                  '   2.2 手術手技',
                  '3. あざ治療',
                  '   3.1 あざの種類と治療法',
                  '   3.2 レーザー治療',
                  '4. イボ治療',
                  '   4.1 イボの診断と治療法',
                  '5. 合併症とリスク',
                  '6. 最新の研究と技術',
                  '7. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容皮膚科におけるほくろ除去・あざ治療・イボ治療に関する総合解説'),
                _buildBodyText(
                    '美容皮膚科において、ほくろ除去、あざ治療、イボ治療は患者の見た目と生活の質を改善するために重要な施術です。以下に、各治療法の基本原理、適応症、手術手技、合併症、最新の研究について詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. ほくろ除去'),
                _buildSubSectionTitle('2.1 ほくろの診断と評価'),
                _buildBodyText(
                    '概要:\n'
                        'ほくろ（母斑）はメラノサイトの増殖による色素性病変で、良性と悪性の区別が重要です。\n\n'
                        '診断:\n\n'
                        '- ダーモスコピー: ほくろの構造とパターンを評価するために使用。\n'
                        '- 皮膚生検: 必要に応じて病理診断を行う。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.2 手術手技'),
                _buildBodyText(
                    '外科的切除:\n\n'
                        '- 局所麻酔下での切開、切除後に縫合。\n'
                        '- 縫合方法は美容的な観点から選択。\n\n'
                        'レーザー治療:\n\n'
                        '- 高エネルギーレーザー（CO2レーザー、エルビウムヤグレーザー）を使用。\n'
                        '- 最小限の出血と早い治癒を期待。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. あざ治療'),
                _buildSubSectionTitle('3.1 あざの種類と治療法'),
                _buildBodyText(
                    '概要:\n'
                        'あざ（血管性病変、色素性病変）は出生時または後天的に発生し、患者の美容的懸念の対象となります。\n\n'
                        '血管性あざ:\n\n'
                        '- 苺状血管腫: 幼児期に発生、自然に消退することもあるが、レーザー治療で早期改善を図ることもある。\n'
                        '- ポートワイン斑: 永続的な血管性病変で、レーザー治療が有効。\n\n'
                        '色素性あざ:\n\n'
                        '- カフェオレ斑: 色素レーザー（Qスイッチレーザー）で治療可能。\n'
                        '- 蒙古斑: 通常は自然消退するが、場合によってはレーザー治療を行うこともある。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('3.2 レーザー治療'),
                _buildBodyText(
                    'Vbeamレーザー:\n\n'
                        '- 血管性あざ（苺状血管腫、ポートワイン斑）に対して使用。\n'
                        '- 血管を破壊し、あざの色を薄くする。\n\n'
                        'Qスイッチレーザー:\n\n'
                        '- 色素性あざ（カフェオレ斑、蒙古斑）に対して使用。\n'
                        '- メラニンを標的にし、色素を破壊する。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. イボ治療'),
                _buildSubSectionTitle('4.1 イボの診断と治療法'),
                _buildBodyText(
                    '概要:\n'
                        'イボ（ウイルス性疣贅）はヒトパピローマウイルス（HPV）によって引き起こされ、患者に不快感や美容的な問題を引き起こすことがあります。\n\n'
                        '診断:\n\n'
                        '- 皮膚の視診と触診。\n'
                        '- 必要に応じて皮膚生検を行う。\n\n'
                        '治療法:\n\n'
                        '- 冷凍療法: 液体窒素を使用してイボを凍結・破壊。\n'
                        '- 電気焼灼法: 高周波電流を使用してイボを焼灼。\n'
                        '- レーザー治療: CO2レーザーを使用してイボを蒸散。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 合併症とリスク'),
                _buildBodyText(
                    'ほくろ除去:\n\n'
                        '- 感染、出血、瘢痕形成のリスク。\n'
                        '- 痛み、腫れ、感覚変化の可能性。\n\n'
                        'あざ治療:\n\n'
                        '- 色素沈着や色素脱失。\n'
                        '- 血管性病変の再発リスク。\n\n'
                        'イボ治療:\n\n'
                        '- 再発率が高い。\n'
                        '- 治療部位の瘢痕形成。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('6. 最新の研究と技術'),
                _buildBodyText(
                    '最新技術:\n\n'
                        '- 新しいレーザー技術やエネルギーデバイスの導入。\n'
                            '- 組織再生技術の応用。\n\n'
                ),

                const SizedBox(height: 20),
                _buildSectionTitle('7. 参考文献'),
                _buildReferenceList([
                  'Journal of the American Academy of Dermatology - Dermoscopy of Melanocytic Lesions:\nhttps://www.jaad.org/article/S0190-9622(15)02418-6/fulltext',
                  'Plastic and Reconstructive Surgery - Techniques for Surgical Removal of Nevi:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2016/02000/Techniques_for_Surgical_Removal_of_Nevi.16.aspx',
                  'Journal of Dermatologic Surgery - Laser Treatment of Vascular Lesions:\nhttps://journals.lww.com/dermatologicsurgery/Fulltext/2019/05000/Laser_Treatment_of_Vascular_Lesions.12.aspx',
                  'Lasers in Surgery and Medicine - Laser Treatment of Pigmented Lesions:\nhttps://onlinelibrary.wiley.com/doi/10.1002/lsm.22057',
                  'Journal of Clinical and Aesthetic Dermatology - Treatment of Warts:\nhttps://www.ncbi.nlm.nih.gov/pmc/articles/PMC2923959/',
                  'Dermatologic Surgery - Complications in Dermatologic Surgery:\nhttps://journals.lww.com/dermatologicsurgery/Fulltext/2017/01000/Complications_in_Dermatologic_Surgery.12.aspx',
                  'Lasers in Surgery and Medicine - Advances in Laser Technology:\nhttps://onlinelibrary.wiley.com/doi/10.1002/lsm.22323',
                  'Journal of Cosmetic and Laser Therapy - Innovations in Dermatologic Treatments:\nhttps://www.tandfonline.com/doi/full/10.1080/14764172.2020.1754307'
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
