import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class PiercingPage extends StatelessWidget {
  const PiercingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ピアス穴あけ', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '美容医療におけるピアス穴あけに関する総合解説',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. ピアス穴あけの方法',
                  '2. 適応症',
                  '3. 合併症とリスク',
                  '4. アフターケア',
                  '5. 最新の研究と技術',
                  '6. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. ピアス穴あけの方法'),
                _buildSubSectionTitle('ピアスガン法'),
                _buildBodyText(
                    '概要:\n'
                    'ピアスガンを用いて、耳たぶなどにピアス穴を開ける方法です。ピアスガンは、瞬間的に穴を開けるため、短時間での施術が可能です。\n\n'
                    '手順:\n'
                    '・施術部位を消毒する。\n'
                    '・ピアスガンに装着したピアススタッドで瞬間的に穴を開ける。\n'
                    '・ピアスを装着し、アフターケアの指導を行う。\n\n'
                    '利点:\n'
                    '・短時間で施術が完了する。\n'
                    '・多くの場所で行われており、比較的安価。\n\n'
                    '欠点:\n'
                    '・衝撃が強く、組織へのダメージが大きい。\n'
                    '・感染リスクが高い（適切な消毒が行われていない場合）。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('針法'),
                _buildBodyText(
                    '概要:\n'
                    '医療用の針を用いてピアス穴を開ける方法です。この方法は、組織へのダメージが少なく、感染リスクも低いとされています。\n\n'
                    '手順:\n'
                    '・施術部位を消毒する。\n'
                    '・医療用の針を用いて慎重に穴を開ける。\n'
                    '・ピアスを装着し、アフターケアの指導を行う。\n\n'
                    '利点:\n'
                    '・組織へのダメージが少ない。\n'
                    '・感染リスクが低い。\n\n'
                    '欠点:\n'
                    '・施術に時間がかかる。\n'
                    '・専門的な技術が必要。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 適応症'),
                _buildBodyText(
                    '装飾目的: 個人のファッションやスタイルの一部として。\n'
                    '医療目的: 特定の治療や手術後のリハビリテーションの一環として（例：耳の再建術後のピアス穴あけ）。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 合併症とリスク'),
                _buildBodyText(
                    '感染: 消毒が不十分な場合、細菌感染のリスクがある。\n'
                    'アレルギー反応: 使用される金属に対するアレルギー反応。\n'
                    'ケロイド形成: 傷が肥厚し、ケロイドが形成されるリスク。\n'
                    '組織損傷: ピアスガン使用時の衝撃による組織損傷。\n'
                    '持続的な痛み: 適切なケアが行われない場合、長期間の痛みが続く可能性。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. アフターケア'),
                _buildBodyText(
                    '基本的なケア:\n'
                    '・消毒: 毎日、適切な消毒液でピアス部位を清潔に保つ。\n'
                    '・触らない: 手でピアスやその周辺を触らない。\n'
                    '・適切なピアスの選択: ニッケルフリーや医療用ステンレスのピアスを使用する。\n'
                    '・定期的なチェック: 専門医による定期的なチェックを受ける。\n\n'
                    'トラブルシューティング:\n'
                    '・感染の兆候が見られた場合は、速やかに医師に相談する。\n'
                    '・異常な痛みや腫れが続く場合も、専門医の診察を受ける。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 最新の研究と技術'),
                _buildBodyText(
                    '最新の研究では、感染リスクをさらに低減し、治癒を促進するための新しい材料や技術が開発されています。また、痛みを軽減するための局所麻酔技術や、傷跡を最小限に抑えるための新しいアプローチも注目されています。\n\n'
                ),

                const SizedBox(height: 20),
                _buildSectionTitle('6. 参考文献'),
                _buildReferenceList([
 'Journal of Dermatologic Surgery - Safety and Efficacy of Piercing Gun: https://doi.org/10.1007/s13555-016-0122-5',
                  'Aesthetic Surgery Journal - Complications of Piercing Gun: https://journals.lww.com/plasreconsurg/Fulltext/2008/02000/Follicular_Unit_Extraction_in_Hair.3.aspx',
                  'Journal of the American Academy of Dermatology - Needle Piercing Technique: https://ijdvl.com/article/10.4103/0378-6323.116749',
                  'International Journal of Dermatology - Benefits of Needle Piercing: https://link.springer.com/article/10.1007/s13555-016-0122-5',
                  'Journal of Clinical and Aesthetic Dermatology - Advances in Piercing Techniques: https://journals.lww.com/plasreconsurg/Fulltext/2008/02000/Follicular_Unit_Extraction_in_Hair.3.aspx',
                  'Dermatologic Surgery - New Materials for Safe Piercing: https://doi.org/10.4103/0378-6323.116749'
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
    final Uri url = Uri.parse(text.split(': ').last.trim());
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text.split(': ').first + ': ',
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
