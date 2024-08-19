import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class NoseSurgeryPage extends StatelessWidget {
  const NoseSurgeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('鼻の整形', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '鼻の整形の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容外科における鼻の整形に関する総合解説',
                  '2. 手術の概要',
                  '3. 手術の種類',
                  '   3.1 開放式鼻整形',
                  '   3.2 閉鎖式鼻整形',
                  '   3.3 非外科的鼻整形',
                  '4. 手術のプロセス',
                  '5. 合併症とリスク',
                  '6. エビデンスと最新の研究',
                  '7. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容外科における鼻の整形に関する総合解説'),
                _buildBodyText(
                    '鼻の整形手術は、美容外科の分野において非常に人気があり、患者の美的満足度や顔全体のバランスを改善するために行われます。この手術は、鼻の形状やサイズ、プロポーションを修正するために、外科的または非外科的手法を用います。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 手術の概要'),
                _buildBodyText(
                    '鼻の整形手術は、鼻の形状やサイズ、プロポーションを改善するために行われる手術です。この手術は、美的な目的だけでなく、呼吸機能を改善するためにも行われます。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 手術の種類'),
                _buildSubSectionTitle('3.1 開放式鼻整形'),
                _buildBodyText(
                    '＜概要＞\n'
                    '鼻孔間の小さな切開を含む方法で、鼻内部の構造が完全に露出されます。これにより、外科医は鼻骨や軟骨を直接視野に入れて操作することができます。\n\n'
                    '＜利点＞\n'
                    '高い精度で修正が可能。複雑な修正が必要な場合や再手術に適しています。\n\n'
                    '＜欠点＞\n'
                    '切開の跡が残る可能性がある。回復期間がやや長い。'
                ),
                const SizedBox(height: 10),
                _buildSubSectionTitle('3.2 閉鎖式鼻整形'),
                _buildBodyText(
                    '＜概要＞\n'
                    '鼻孔内で切開を行う方法で、外部に切開跡が残りません。\n\n'
                    '＜利点＞\n'
                    '切開跡が見えない。回復期間が短い。\n\n'
                    '＜欠点＞\n'
                    '手術視野が限られるため、非常に精密な操作が必要。'
                ),
                const SizedBox(height: 10),
                _buildSubSectionTitle('3.3 非外科的鼻整形'),
                _buildBodyText(
                    '＜概要＞\n'
                    'ヒアルロン酸フィラーなどを注入し、鼻の形状を一時的に改善する方法。\n\n'
                    '＜利点＞\n'
                    '切開を伴わないため、リスクが少なく、回復も早い。\n\n'
                    '＜欠点＞\n'
                    '効果が一時的であり、定期的なメンテナンスが必要。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 手術のプロセス'),
                _buildBodyText(
                    '＜カウンセリング＞\n'
                    '患者の希望や期待を詳細に聞き取り、適切な手術法を選択します。\n'
                    '手術のリスク、回復期間、費用について説明します。\n\n'
                    '＜プレオペレーション＞\n'
                    '血液検査やアレルギーチェックを行い、手術に適しているか確認します。\n'
                    '手術当日は、メイクやコンタクトレンズの使用を避けます。\n\n'
                    '＜手術＞\n'
                    '局所麻酔または全身麻酔を施し、選択された手術法に従って操作を行います。\n'
                    '骨や軟骨を調整し、希望の形状に修正します。\n\n'
                    '＜アフターケア＞\n'
                    '手術後は、腫れや内出血が生じることがありますが、通常は数週間で回復します。\n'
                    '患者には、鼻をこすらない、激しい運動を避ける、感染予防のために清潔を保つなどの指示が与えられます。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 合併症とリスク'),
                _buildBodyText(
                    '感染\n'
                    '出血\n'
                    '非対称な結果\n'
                    '瘢痕形成\n'
                    '呼吸困難'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('6. エビデンスと最新の研究'),
                _buildBodyText(
                    '近年の研究では、患者満足度の向上や合併症の減少を目指した新しい技術が開発されています。例えば、3Dシミュレーションを用いた術前計画や、自家組織を用いた再建技術が注目されています。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('7. 参考文献'),
                _buildReferenceList([
                  'American Society of Plastic Surgeons (ASPS) - Rhinoplasty:\nhttps://www.plasticsurgery.org/cosmetic-procedures/rhinoplasty',
                  'Mayo Clinic - Rhinoplasty: Overview:\nhttps://www.mayoclinic.org/tests-procedures/rhinoplasty/about/pac-20384532',
                  'Plastic and Reconstructive Surgery - Advances in Rhinoplasty:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2019/11000/Advances_in_Rhinoplasty.15.aspx'
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
