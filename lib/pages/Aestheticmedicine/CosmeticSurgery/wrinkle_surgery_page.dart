import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class WrinkleSurgeryPage extends StatelessWidget {
  const WrinkleSurgeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('しわ・たるみ整形', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    'しわ・たるみ整形の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容外科におけるしわ・たるみ整形の総合解説',
                  '2. 注入療法',
                  '3. 糸リフト',
                  '4. フェイスリフト',
                  '5. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容外科におけるしわ・たるみ整形の総合解説'),
                _buildBodyText(
                  'しわ・たるみの整形手術は、顔の若返りを目的とした美容外科の分野で重要な位置を占めています。これには、非侵襲的な注入療法から、侵襲的な手術療法まで多岐にわたる手法が含まれます。以下に、注入療法、糸リフト、フェイスリフトについて詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 注入療法'),
                _buildBodyText(
                  '＜概要＞\n'
                  '注入療法は、ヒアルロン酸やボトックスなどの物質を皮膚に注入し、しわやたるみを軽減する非侵襲的な治療法です。即効性があり、ダウンタイムが短いのが特徴です。\n\n'
                  '＜主な注入物質＞\n\n'
                  '・ヒアルロン酸:\n'
                  '効果: 皮膚にボリュームを与え、しわやたるみを目立たなくします。\n'
                  '持続期間: 6ヶ月から1年程度。\n'
                  'リスクと合併症: 腫れ、赤み、アレルギー反応。\n\n'
                  '・ボトックス:\n'
                  '効果: 表情筋をリラックスさせ、動的なしわを軽減します。\n'
                  '持続期間: 3ヶ月から6ヶ月程度。\n'
                  'リスクと合併症: まぶたの下垂、局所的な筋肉の弱化。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 糸リフト'),
                _buildBodyText(
                  '＜概要＞\n'
                  '糸リフトは、特殊な糸を皮膚下に挿入し、物理的に皮膚を引き上げることで、たるみを改善する方法です。切開を伴わないため、ダウンタイムが短いのが特徴です。\n\n'
                  '＜使用される糸の種類＞\n\n'
                  '・PDO（Polydioxanone）:\n'
                  '効果: コラーゲン生成を促進し、持続的なリフト効果を得ることができます。\n'
                  '持続期間: 1年から1年半程度。\n'
                  'リスクと合併症: 感染、糸の露出、不均一なリフト。\n\n'
                  '＜プロセス＞\n\n'
                  '局所麻酔下で行われ、特殊な針を用いて糸を皮膚下に挿入します。挿入後、糸を引き上げて固定します。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. フェイスリフト'),
                _buildBodyText(
                  '＜概要＞\n'
                  'フェイスリフトは、顔の皮膚を切開し、余分な皮膚や脂肪を除去し、筋肉や組織を引き上げて若返りを図る侵襲的な手術です。効果が長持ちするのが特徴です。\n\n'
                  '＜手術の種類＞\n\n'
                  '・従来型フェイスリフト:\n'
                  '手術法: 耳の前から髪の生え際にかけて切開し、皮膚を引き上げます。深層組織を引き締めることもあります。\n'
                  '持続期間: 5年から10年程度。\n'
                  'リスクと合併症: 感染、出血、神経損傷、瘢痕。\n\n'
                  '・ミニリフト:\n'
                  '手術法: 小さな切開を行い、局所的なリフトを実施します。\n'
                  '持続期間: 2年から5年程度。\n'
                  'リスクと合併症: 従来型に比べてリスクは低いが、効果の持続期間は短い。\n\n'
                  '＜プロセス＞\n\n'
                  '全身麻酔または局所麻酔下で行われ、皮膚の切開、リフト、縫合を行います。手術後は数週間の回復期間が必要です。\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 参考文献'),
                _buildReferenceList([
                  'American Society of Plastic Surgeons (ASPS) - Dermal Fillers:\nhttps://www.plasticsurgery.org/cosmetic-procedures/dermal-fillers',
                  'Mayo Clinic - Botox Injections:\nhttps://www.mayoclinic.org/tests-procedures/botox/about/pac-20384658',
                  'Dermatologic Surgery - Thread Lift: Indications and Techniques:\nhttps://journals.lww.com/dermatologicsurgery/Fulltext/2019/06000/Thread_Lift__Indications_and_Techniques.17.aspx',
                  'Plastic and Reconstructive Surgery - Facelift Techniques and Outcomes:\nhttps://journals.lww.com/plasreconsurg/Fulltext/2018/08000/Facelift_Techniques_and_Outcomes.12.aspx',
                  'American Society for Aesthetic Plastic Surgery (ASAPS) - Facelift:\nhttps://www.surgery.org/procedures/facelift'
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
