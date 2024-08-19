import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class EarSurgeryPage extends StatelessWidget {
  const EarSurgeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('耳の整形', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '耳の整形の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容外科における耳の整形に関する総合解説',
                  '2. 主要な手術法',
                  '   2.1 耳介形成術',
                  '   2.2 耳垂形成術',
                  '3. 手術のプロセス',
                  '4. 合併症とリスク',
                  '5. エビデンスと最新の研究',
                  '6. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容外科における耳の整形に関する総合解説'),
                _buildBodyText(
                  '耳の整形手術は、美容外科の中でも特に目立つ部分の改善を目的とした手術です。'
                  '耳の形状や位置、プロポーションを修正し、全体的な顔のバランスを改善するために行われます。'
                  '以下では、耳の整形手術について、主要な手術法、適応症、合併症、最新の研究について詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 主要な手術法'),
                _buildSubSectionTitle('2.1 耳介形成術'),
                _buildBodyText(
                  '＜概要＞\n'
                  '耳介形成術は、耳の突出や形状を修正するための手術です。一般的に、耳の後部を切開し、軟骨を再配置または除去して、耳を頭部に近づける形状にします。\n'
                  '＜手術の種類＞\n'
                  '伝統的な耳介形成術:\n'
                  '手術法: 耳の後ろの皮膚を切開し、軟骨を再配置または除去して、耳の形状を整えます。\n'
                  '利点: 永続的な結果が得られる。\n'
                  '欠点: 全身麻酔が必要で、回復期間がやや長い。\n'
                  '非侵襲的耳介形成術:\n'
                  '手術法: 特殊なクリップやステントを使用して耳の形状を修正します。\n'
                  '利点: 切開を伴わないため、ダウンタイムが短い。\n'
                  '欠点: 効果が限定的で、長期間の維持が難しい場合がある。\n'
                  '＜適応症＞\n'
                  '先天性の耳の変形（立ち耳など）\n'
                  '外傷による耳の変形\n'
                  '審美的な理由による修正\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.2 耳垂形成術'),
                _buildBodyText(
                  '＜概要＞\n'
                  '耳垂形成術は、耳たぶの形状を修正するための手術です。ピアス穴の拡大や裂けた耳たぶを修正するために行われます。\n'
                  '＜手術の種類＞\n'
                  '裂けた耳たぶの修正:\n'
                  '手術法: 裂けた部分を切開し、再縫合して耳たぶの形状を修正します。\n'
                  '利点: 永続的な結果が得られる。\n'
                  '欠点: 切開跡が残る場合がある。\n'
                  '拡大したピアス穴の修正:\n'
                  '手術法: 拡大したピアス穴の周囲を切開し、再縫合して正常な形状に戻します。\n'
                  '利点: ピアス穴を再度使用できる。\n'
                  '欠点: 完全に元通りにならない場合がある。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 手術のプロセス'),
                _buildBodyText(
                  'カウンセリング:\n'
                  '患者の希望や期待を詳細に聞き取り、適切な手術法を選択します。'
                  '手術のリスク、回復期間、費用について説明します。\n'
                  'プレオペレーション:\n'
                  '血液検査やアレルギーチェックを行い、手術に適しているか確認します。'
                  '手術当日は、メイクやコンタクトレンズの使用を避けます。\n'
                  '手術:\n'
                  '局所麻酔または全身麻酔を施し、選択された手術法に従って操作を行います。'
                  '軟骨や皮膚を調整し、希望の形状に修正します。\n'
                  'アフターケア:\n'
                  '手術後は、腫れや内出血が生じることがありますが、通常は数週間で回復します。'
                  '患者には、耳をこすらない、激しい運動を避ける、感染予防のために清潔を保つなどの指示が与えられます。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 合併症とリスク'),
                _buildBodyText(
                  '感染\n'
                  '出血\n'
                  '非対称な結果\n'
                  '瘢痕形成\n'
                  '神経損傷\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. エビデンスと最新の研究'),
                _buildBodyText(
                  '最新の研究では、耳の整形手術の安全性と効果を高めるための新しい技術や材料が開発されています。'
                  '3Dプリンティング技術を用いた個別カスタムインプラントや、術後の回復を早めるための新しい縫合技術が注目されています。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('6. 参考文献'),
                _buildReferenceList([
                  'Plastic and Reconstructive Surgery - Otoplasty Techniques and Outcomes:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2018/07000/Otoplasty_Techniques_and_Outcomes.14.aspx',
                  'Dermatologic Surgery - Earlobe Repair Techniques:\nhttps://journals.lww.com/dermatologicsurgery/Fulltext/2019/06000/Earlobe_Repair_Techniques.20.aspx',
                  'Aesthetic Surgery Journal - Advances in Otoplasty:\nhttps://academic.oup.com/asj/article/40/7/755/5864571'
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
