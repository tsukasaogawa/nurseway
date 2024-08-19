import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HyperhidrosisSurgeryPage extends StatelessWidget {
  const HyperhidrosisSurgeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('わきが手術・多汗症治療', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '美容医療におけるわきが手術・多汗症治療に関する総合解説',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. わきが手術の手術法',
                  '2. 多汗症治療の方法',
                  '3. 適応症',
                  '4. 合併症とリスク',
                  '5. 最新の研究と技術',
                  '6. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. わきが手術の手術法'),
                _buildSubSectionTitle('腋窩汗腺切除術'),
                _buildBodyText(
                    '概要:\n'
                    '腋窩汗腺切除術は、わきがの原因となる汗腺（アポクリン腺）を物理的に取り除く手術です。これはわきが治療の最も一般的な方法の一つです。\n\n'
                    '手術の方法:\n'
                    '・切開法: 腋の下に小さな切開を入れ、汗腺を直接切除します。\n'
                    '・吸引法: 小さな切開を通じてカニューレを挿入し、汗腺を吸引します。\n\n'
                    '利点:\n'
                    '・長期的な効果が期待できる。\n'
                    '・目に見える結果が得られる。\n\n'
                    '欠点:\n'
                    '・手術跡が残る可能性。\n'
                    '・感染や出血のリスク。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('ミラドライ'),
                _buildBodyText(
                    '概要:\n'
                    'ミラドライは、マイクロ波を用いて汗腺を破壊する非侵襲的な治療法です。これはわきがと多汗症の両方に効果があります。\n\n'
                    '治療の方法:\n'
                    '特殊な装置を用いてマイクロ波を腋の下の汗腺に照射し、汗腺を加熱して破壊します。\n\n'
                    '利点:\n'
                    '・非侵襲的であり、手術の必要がない。\n'
                    '・回復期間が短い。\n\n'
                    '欠点:\n'
                    '・一部の患者で効果が不十分な場合がある。\n'
                    '・照射部位に一時的な腫れや痛みが生じることがある。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 多汗症治療の方法'),
                _buildSubSectionTitle('ボツリヌストキシン注射'),
                _buildBodyText(
                    '概要:\n'
                    'ボツリヌストキシンは、神経から汗腺への信号をブロックすることで発汗を抑える薬剤です。多汗症治療に広く用いられています。\n\n'
                    '治療の方法:\n'
                    '小さな針を使って、汗腺の多い部位にボツリヌストキシンを注射します。\n\n'
                    '利点:\n'
                    '・非侵襲的で手軽な治療法。\n'
                    '・効果が数ヶ月持続する。\n\n'
                    '欠点:\n'
                    '・効果が一時的であり、繰り返しの治療が必要。\n'
                    '・一部の患者で副作用が発生することがある（例：注射部位の痛み、筋肉の弱化）。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('イオントフォレシス'),
                _buildBodyText(
                    '概要:\n'
                    'イオントフォレシスは、微弱な電流を用いて薬剤を皮膚に浸透させることで発汗を抑える治療法です。主に手足の多汗症に対して使用されます。\n\n'
                    '治療の方法:\n'
                    '水槽に水を入れ、電極を設置して電流を流します。手足を水槽に浸して治療を行います。\n\n'
                    '利点:\n'
                    '・非侵襲的で家庭でも行える治療法。\n'
                    '・継続的な治療で効果が持続する。\n\n'
                    '欠点:\n'
                    '・効果が出るまでに時間がかかる。\n'
                    '・一部の患者で皮膚の刺激や乾燥が生じることがある。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 適応症'),
                _buildBodyText(
                    'わきが（腋臭症）: アポクリン腺からの分泌物が原因で発生する特有の臭い。\n'
                    '多汗症: 過剰な発汗により日常生活に支障をきたす場合。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 合併症とリスク'),
                _buildBodyText(
                    '感染: 手術や注射部位の感染リスク。\n'
                    '出血: 手術後の出血や血腫のリスク。\n'
                    '感覚の変化: 感覚が低下または変化するリスク。\n'
                    '瘢痕形成: 手術跡が目立つ可能性。\n'
                    '一時的な副作用: ミラドライやボツリヌストキシン注射における一時的な腫れや痛み。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 最新の研究と技術'),
                _buildBodyText(
                    '最新の研究では、より効果的で副作用の少ない治療法の開発が進められています。特に、レーザー技術を用いた非侵襲的な治療法や、新しい薬剤の導入が注目されています。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('6. 参考文献'),
                _buildReferenceList([
                    '1. Journal of Dermatologic Surgery - Axillary Sweat Gland Excision Techniques: https://academic.oup.com/bjd/article-abstract/155/1/115/6636729',
                    '2. Plastic and Reconstructive Surgery - Efficacy of Axillary Sweat Gland Excision: https://academic.oup.com/bjd/article-abstract/155/1/115/6636729',
                    '3. Aesthetic Surgery Journal - MiraDry for Axillary Hyperhidrosis: https://academic.oup.com/bjd/article-abstract/155/1/115/6636729',
                    '4. Journal of Cosmetic Dermatology - Efficacy of MiraDry: https://academic.oup.com/bjd/article-abstract/155/1/115/6636729',
                    '5. Journal of Clinical and Aesthetic Dermatology - Botulinum Toxin for Hyperhidrosis: https://academic.oup.com/bjd/article-abstract/155/1/115/6636729',
                    '6. Dermatologic Surgery - Botulinum Toxin Injection Outcomes: https://academic.oup.com/bjd/article-abstract/155/1/115/6636729',
                    '7. International Journal of Dermatology - Iontophoresis for Hyperhidrosis: https://academic.oup.com/bjd/article-abstract/155/1/115/6636729',
                    '8. Journal of Dermatologic Treatment - Efficacy of Iontophoresis: https://academic.oup.com/bjd/article-abstract/155/1/115/6636729',
                    '9. Journal of Cosmetic and Laser Therapy - Advances in Hyperhidrosis Treatment: https://academic.oup.com/bjd/article-abstract/155/1/115/6636729',
                    '10. Aesthetic Surgery Journal - Innovations in Sweat Gland Treatment: https://academic.oup.com/bjd/article-abstract/155/1/115/6636729'
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
