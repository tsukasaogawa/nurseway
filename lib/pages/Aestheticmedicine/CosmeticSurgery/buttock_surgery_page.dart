import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtockSurgeryPage extends StatelessWidget {
  const ButtockSurgeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('豊尻・ヒップアップ', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '豊尻・ヒップアップの詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容外科における豊尻・ヒップアップに関する総合解説',
                  '2. 豊尻・ヒップアップの手術法',
                  '   2.1 シリコンインプラント法',
                  '   2.2 脂肪注入法',
                  '   2.3 ヒップリフト',
                  '3. 適応症',
                  '4. 合併症とリスク',
                  '5. 最新の研究と技術',
                  '6. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容外科における豊尻・ヒップアップに関する総合解説'),
                _buildBodyText(
                  '豊尻・ヒップアップ手術は、臀部の形状を改善し、より豊かで引き締まった外観を作るために行われる美容外科手術です。'
                  '以下に、豊尻手術の主要な方法、適応症、合併症、最新の研究について詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 豊尻・ヒップアップの手術法'),
                _buildSubSectionTitle('2.1 シリコンインプラント法'),
                _buildBodyText(
                  '＜概要＞\n'
                  'シリコンインプラントを臀部に挿入し、ボリュームを増加させる方法です。特に筋肉が少ない場合や大きなボリュームが必要な場合に適しています。\n'
                  '＜手術の方法＞\n'
                  '切開部位: 尾骨付近の切開からインプラントを挿入。\n'
                  '位置: 大臀筋下または筋膜下にインプラントを配置。\n'
                  '手術時間: 約2〜3時間。\n'
                  '利点:大きなボリュームが得られる。\n'
                  '永続的な結果が期待できる。\n'
                  '欠点:手術後の回復期間が長い。\n'
                  'インプラントの破損や移動のリスク。\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.2 脂肪注入法'),
                _buildBodyText(
                  '＜概要＞\n'
                  '自身の脂肪を採取して臀部に注入する方法で、自然な見た目と触感を提供します。\n'
                  '＜手術の方法＞\n'
                  '脂肪採取: 腹部や大腿部から脂肪を採取。\n'
                  '脂肪注入: 採取した脂肪を精製し、臀部に注入。\n'
                  '手術時間: 約3〜5時間。\n'
                  '利点:自然な見た目と触感。\n'
                  '同時に脂肪吸引が可能。\n'
                  '欠点:吸収率が個人差により変動。\n'
                  '複数回の手術が必要な場合がある。\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.3 ヒップリフト'),
                _buildBodyText(
                  '＜概要＞\n'
                  'ヒップリフトは、臀部の皮膚を引き上げ、引き締めるために行われる手術です。特に体重減少後や老化により皮膚がたるんだ場合に適しています。\n'
                  '＜手術の方法＞\n'
                  '切開部位: 腰の上部または臀部の下部から切開。\n'
                  '皮膚引き上げ: 余分な皮膚を除去し、引き上げて縫合。\n'
                  '手術時間: 約2〜4時間。\n'
                  '利点:皮膚のたるみを効果的に改善。\n'
                  '引き締まった外観を得られる。\n'
                  '欠点:縫合跡が目立つ場合がある。\n'
                  '手術後の回復期間が長い。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 適応症'),
                _buildBodyText(
                  '局所的な脂肪蓄積がある場合。\n'
                  'ダイエットや運動で改善しない脂肪。\n'
                  '健康な成人で、皮膚の弾力が良好な場合。\n'
                  '体重減少後や老化による皮膚のたるみ。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 合併症とリスク'),
                _buildBodyText(
                  '感染: 手術部位の感染リスク。\n'
                  '出血: 術後の出血や血腫のリスク。\n'
                  '不均一な脂肪除去: 凹凸や不均一な結果のリスク。\n'
                  '皮膚のたるみ: 皮膚の弾力が不十分な場合、たるみが生じるリスク。\n'
                  '神経損傷: 感覚の低下や神経痛。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 最新の研究と技術'),
                _buildBodyText(
                  '最新の研究では、脂肪吸引の安全性と効果を高めるための新しい技術や材料が開発されています。'
                  '3Dシミュレーションを用いた術前計画や、術後の回復を早めるための新しい縫合技術が注目されています。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('6. 参考文献'),
                _buildReferenceList([
                  'American Society of Plastic Surgeons - Buttock Augmentation with Implants:\nhttps://www.plasticsurgery.org/cosmetic-procedures/buttock-augmentation',
                  'Mayo Clinic - Buttock Implants:\nhttps://www.mayoclinic.org/tests-procedures/buttock-implants/about/pac-20384950',
                  'Plastic and Reconstructive Surgery - Brazilian Butt Lift:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2012/11000/Brazilian_Butt_Lift__Safe_and_Effective.15.aspx',
                  'Aesthetic Surgery Journal - Fat Grafting in Buttock Augmentation:\nhttps://academic.oup.com/asj/article/34/2/282/232593',
                  'Aesthetic Plastic Surgery - Buttock Lift Techniques:\nhttps://link.springer.com/article/10.1007/s00266-008-9171-4',
                  'Journal of Plastic, Reconstructive & Aesthetic Surgery - Outcomes of Buttock Lift:\nhttps://www.jprasurg.com/article/S1748-6815(19)30144-1/fulltext',
                  'Plastic and Reconstructive Surgery - Advances in Buttock Augmentation Techniques:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2018/01000/Advances_in_Buttock_Augmentation_Techniques.22.aspx',
                  'Aesthetic Surgery Journal - Innovations in Buttock Augmentation Technology:\nhttps://academic.oup.com/asj/article/41/5/593/5674587'
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
