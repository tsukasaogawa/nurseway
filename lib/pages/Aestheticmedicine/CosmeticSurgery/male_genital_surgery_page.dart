import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MaleGenitalSurgeryPage extends StatelessWidget {
  const MaleGenitalSurgeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('男性器形成', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '男性器形成の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容外科における男性器整形に関する総合解説',
                  '2. 陰茎増大術',
                  '   2.1 ヒアルロン酸注入',
                  '   2.2 脂肪注入',
                  '3. 陰茎長大術',
                  '4. 包茎手術',
                  '5. 睾丸インプラント',
                  '6. 合併症とリスク',
                  '7. 最新の研究と技術',
                  '8. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容外科における男性器整形に関する総合解説'),
                _buildBodyText(
                  '男性器整形は、機能的および美的な改善を目的として行われる手術です。これには、陰茎増大術、陰茎長大術、包茎手術、睾丸インプラントなどが含まれます。以下に、主要な手術法、適応症、合併症、最新の研究について詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 陰茎増大術'),
                _buildSubSectionTitle('2.1 ヒアルロン酸注入'),
                _buildBodyText(
                  '＜概要＞\n'
                  'ヒアルロン酸注入は、陰茎の直径を増加させるために用いられる方法です。即効性があり、ダウンタイムが短いのが特徴です。\n\n'
                  '＜手術の方法＞\n'
                  'ヒアルロン酸を陰茎皮下に注入し、ボリュームを増加させます。\n\n'
                  '＜利点＞\n'
                  '手軽でダウンタイムが短い。\n'
                  '効果が即時に現れる。\n\n'
                  '＜欠点＞\n'
                  '効果は一時的で、数ヶ月ごとに再注入が必要。\n'
                  '異物反応のリスク。\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.2 脂肪注入'),
                _buildBodyText(
                  '＜概要＞\n'
                  '脂肪注入は、自身の脂肪を採取し、陰茎に注入する方法です。自然な見た目と触感を提供します。\n\n'
                  '＜手術の方法＞\n'
                  '腹部や大腿部から脂肪を採取し、精製して陰茎に注入します。\n\n'
                  '＜利点＞\n'
                  '自然な見た目と触感。\n'
                  '自然な材料を使用するため、アレルギー反応のリスクが低い。\n\n'
                  '＜欠点＞\n'
                  '吸収率が個人差により変動し、再注入が必要な場合がある。\n'
                  '吸収されることがあるため、永続性は低い。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 陰茎長大術'),
                _buildBodyText(
                  '＜概要＞\n'
                  '陰茎長大術は、陰茎の長さを増加させるために行われる手術です。靭帯切断や皮膚伸展術が主な方法です。\n\n'
                  '＜手術の方法＞\n'
                  '靭帯切断: 陰茎を支える靭帯を切断し、陰茎を前方に引き出します。\n'
                  '皮膚伸展術: 陰茎の皮膚を伸ばし、追加の皮膚を移植します。\n\n'
                  '＜利点＞\n'
                  '陰茎の長さが増加する。\n'
                  '比較的簡単な手術である。\n\n'
                  '＜欠点＞\n'
                  '手術後の回復期間が長い。\n'
                  '効果が限定的で、見た目の改善に留まることが多い。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 包茎手術'),
                _buildBodyText(
                  '＜概要＞\n'
                  '包茎手術は、過剰な包皮を切除し、陰茎を露出させる手術です。美的な理由や衛生的な理由で行われます。\n\n'
                  '＜手術の方法＞\n'
                  '包皮を切除し、縫合します。局所麻酔下で行われることが一般的です。\n\n'
                  '＜利点＞\n'
                  '衛生状態が改善される。\n'
                  '感染リスクが減少する。\n\n'
                  '＜欠点＞\n'
                  '感覚の変化のリスク。\n'
                  '縫合跡が残る可能性。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 睾丸インプラント'),
                _buildBodyText(
                  '＜概要＞\n'
                  '睾丸インプラントは、先天性欠損や外傷による睾丸欠損を補うために、人工睾丸を挿入する手術です。\n\n'
                  '＜手術の方法＞\n'
                  'シリコンや生理食塩水で満たされたインプラントを陰嚢に挿入します。\n\n'
                  '＜利点＞\n'
                  '見た目が自然で、心理的満足度が高い。\n'
                  '永続的な結果が期待できる。\n\n'
                  '＜欠点＞\n'
                  'インプラントの移動や破損のリスク。\n'
                  '感染のリスク。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('6. 合併症とリスク'),
                _buildBodyText(
                  '感染: 手術部位の感染リスク。\n'
                  '出血: 術後の出血や血腫のリスク。\n'
                  '感覚の変化: 感覚が低下または変化するリスク。\n'
                  '非対称性: 左右のバランスが不均等になるリスク。\n'
                  '瘢痕形成: 縫合跡が目立つ可能性。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('7. 最新の研究と技術'),
                _buildBodyText(
                  '最新の研究では、手術後の回復を早め、合併症のリスクを減少させるための新しい縫合技術や術後管理法が開発されています。また、3Dシミュレーションを用いた術前計画が精度を高めています。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('8. 参考文献'),
                _buildReferenceList([
                  'Journal of Sexual Medicine - Hyaluronic Acid in Penile Augmentation:\nhttps://www.jsm.journal/',
                  'Plastic and Reconstructive Surgery - Fat Grafting in Penile Augmentation:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2014/03000/Fat_Grafting_in_Penile_Augmentation.17.aspx',
                  'Journal of Urology - Penile Lengthening Surgery:\nhttps://www.auajournals.org/doi/10.1016/j.juro.2014.06.100',
                  'New England Journal of Medicine - Circumcision Techniques:\nhttps://www.nejm.org/doi/full/10.1056/NEJMra0912067',
                  'British Journal of Urology International - Testicular Implants:\nhttps://bjui-journals.onlinelibrary.wiley.com/doi/10.1111/bju.12977',
                  'Plastic and Reconstructive Surgery - Advances in Penile Surgery:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2016/05000/Advances_in_Penile_Surgery.13.aspx',
                  'Aesthetic Surgery Journal - Innovations in Male Genital Surgery:\nhttps://academic.oup.com/asj/article/38/4/406/5091342'
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
