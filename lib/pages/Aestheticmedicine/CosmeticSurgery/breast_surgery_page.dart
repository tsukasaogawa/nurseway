import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BreastSurgeryPage extends StatelessWidget {
  const BreastSurgeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('豊胸・胸の整形', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '豊胸・胸の整形の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容外科における豊胸・胸の整形に関する総合解説',
                  '2. 豊胸手術の種類',
                  '   2.1 シリコンインプラント法',
                  '   2.2 生理食塩水インプラント法',
                  '   2.3 脂肪注入法',
                  '3. 合併症とリスク',
                  '4. 最新の研究と技術',
                  '5. 参考文献',
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容外科における豊胸・胸の整形に関する総合解説'),
                _buildBodyText(
                    '美容外科における豊胸手術は、乳房のサイズや形状を改善し、女性の体形をより美しくするための手術です。'
                        '以下に、豊胸手術の主要な方法、適応症、合併症、最新の研究について詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 豊胸手術の種類'),
                _buildSubSectionTitle('2.1 シリコンインプラント法'),
                _buildBodyText(
                    '＜概要＞\n'
                        'シリコンインプラントは、乳房のサイズを増大させるためにシリコン製のインプラントを挿入する方法です。\n'
                        '＜手術の方法＞\n'
                        '切開部位: 乳房下縁、乳輪周囲、腋窩などからインプラントを挿入。\n'
                        '位置: 大胸筋下または乳腺下にインプラントを配置。\n'
                        '手術時間: 約1〜2時間。\n'
                        '＜利点＞: 永続的な結果。\n'
                        '幅広いサイズと形状の選択肢。\n'
                        '＜欠点＞: 手術後の回復期間が長い。\n'
                        'インプラントの破損やカプセル拘縮のリスク。\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.2 生理食塩水インプラント法'),
                _buildBodyText(
                    '＜概要＞\n'
                        '生理食塩水インプラントは、生理食塩水で満たされたインプラントを乳房に挿入する方法です。\n'
                        '＜手術の方法＞\n'
                        '切開部位: シリコンインプラントと同様。\n'
                        '位置: 大胸筋下または乳腺下にインプラントを配置。\n'
                        '手術時間: 約1〜2時間。\n'
                        '＜利点＞: 破損しても生理食塩水が体内に吸収されるため安全。\n'
                        'サイズ調整が容易。\n'
                        '＜欠点＞: 触感が自然なシリコンインプラントに比べて硬い。\n'
                        'リップリング（波打ち）のリスク。\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.3 脂肪注入法'),
                _buildBodyText(
                    '＜概要＞\n'
                        '脂肪注入法は、自己脂肪を採取し、胸部に注入する方法です。自然な見た目と触感を提供します。\n'
                        '＜手術の方法＞\n'
                        '脂肪採取: 腹部や大腿部から脂肪を採取。\n'
                        '脂肪注入: 採取した脂肪を精製し、乳房に注入。\n'
                        '手術時間: 約2〜4時間。\n'
                        '＜利点＞: 自然な見た目と触感。\n'
                        'インプラントのような異物反応がない。\n'
                        '＜欠点＞: 吸収率が個人差による。\n'
                        '複数回の手術が必要な場合がある。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 合併症とリスク'),
                _buildBodyText(
                    '感染: 手術部位の感染リスク。\n'
                        '出血: 術後の出血や血腫のリスク。\n'
                        'カプセル拘縮: インプラント周囲に硬いカプセルが形成されるリスク。\n'
                        'インプラント破損: インプラントの破損や漏れ。\n'
                        '非対称性: 左右のバランスが不均等になるリスク。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 最新の研究と技術'),
                _buildBodyText(
                    '近年の研究では、インプラントの表面加工技術や、脂肪注入の生着率を向上させる技術が進展しています。'
                        'これにより、より自然で長持ちする結果が得られるようになっています。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 参考文献'),
                _buildReferenceList([
                  'Plastic and Reconstructive Surgery - Advances in Breast Augmentation Techniques:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2019/04000/Advances_in_Breast_Augmentation_Techniques.14.aspx',
                  'Aesthetic Surgery Journal - Innovations in Breast Implant Technology:\nhttps://academic.oup.com/asj/article/40/5/545/5800397',
                  'American Society of Plastic Surgeons - Breast Augmentation:\nhttps://www.plasticsurgery.org/cosmetic-procedures/breast-augmentation',
                  'Mayo Clinic - Breast Implants:\nhttps://www.mayoclinic.org/tests-procedures/breast-implants/about/pac-20385243',
                  'Plastic and Reconstructive Surgery - Fat Grafting for Breast Augmentation:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2018/01000/Fat_Grafting_for_Breast_Augmentation.20.aspx',
                  'Aesthetic Surgery Journal - Fat Grafting in Breast Augmentation:\nhttps://academic.oup.com/asj/article/38/6/629/5032618',
                  'FDA - Breast Implants:\nhttps://www.fda.gov/medical-devices/breast-implants'
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

  Widget _buildReferenceTextWithLink(String reference) {
    final parts = reference.split('\n');
    final text = parts[0];
    final url = parts.length > 1 ? parts[1] : '';

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '・',
            style: GoogleFonts.notoSerif(fontSize: 16, color: Colors.black),
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

  Widget _buildReferenceList(List<String> references) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: references.map((reference) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0),
        child: _buildReferenceTextWithLink(reference),
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
