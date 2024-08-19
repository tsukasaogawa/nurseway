import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class PermanentMakeupPage extends StatelessWidget {
  const PermanentMakeupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('アートメイク', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    'アートメイクの詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容皮膚科におけるアートメイクに関する総合解説',
                  '2. アートメイクの基本原理',
                  '   2.1 アートメイクとは',
                  '   2.2 施術方法',
                  '3. 適応症と禁忌',
                  '4. 施術手順と注意点',
                  '5. 合併症とリスク管理',
                  '6. 最新の研究と技術',
                  '7. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容皮膚科におけるアートメイクに関する総合解説'),
                _buildBodyText(
                    'アートメイクは、美容皮膚科において施される長期間持続する化粧法の一つであり、眉毛、アイライン、リップなどの部位に対して行われます。医療従事者が提供する安全かつ効果的な施術のためには、アートメイクの技術、適応、合併症、最新の研究について深い理解が必要です。以下に、これらの内容を詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. アートメイクの基本原理'),
                _buildSubSectionTitle('2.1 アートメイクとは'),
                _buildBodyText(
                    '概要:\n'
                        'アートメイクは、皮膚の表層に色素を植え付けることで、化粧の効果を長期間持続させる技術です。特に眉毛やアイライン、リップに使用され、美容的な目的で広く行われています。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.2 施術方法'),
                _buildBodyText(
                    'マイクロブレーディング:\n\n'
                        '- 手動で微細な刃を使用し、眉毛の毛のように見えるストロークを描く技術。\n\n'
                        'デジタルマシン:\n\n'
                        '- 電動の針を使用して色素を皮膚に注入する方法で、アイラインやリップに適用されることが多い。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 適応症と禁忌'),
                _buildBodyText(
                    '適応症:\n\n'
                        '- 眉毛: 眉毛が薄い、形が不揃い、または欠けている場合に形状を整える。\n'
                        '- アイライン: アイラインを強調し、目の輪郭をはっきりさせる。\n'
                        '- リップ: 唇の輪郭を強調し、色味を補う。\n\n'
                        '禁忌:\n\n'
                        '- アレルギー: 色素に対するアレルギーの既往歴がある場合。\n'
                        '- 感染症: 施術部位に感染症がある場合。\n'
                        '- 皮膚疾患: 活動性の皮膚疾患がある場合。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 施術手順と注意点'),
                _buildBodyText(
                    '準備:\n\n'
                        '- 患者の皮膚タイプとアレルギーの評価。\n'
                        '- 色素の選定と試験。\n\n'
                        '施術手順:\n\n'
                        '- 消毒: 施術部位の消毒。\n'
                        '- 麻酔: 局所麻酔クリームの適用。\n'
                        '- デザイン: 施術部位のデザインを決定し、描く。\n'
                        '- 色素の注入: 適切な技術で色素を皮膚に注入。\n'
                        '- アフターケア: 保湿と感染予防。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 合併症とリスク管理'),
                _buildBodyText(
                    '短期的リスク:\n\n'
                        '- 腫れ: 施術後の軽度の腫れ。\n'
                        '- 赤み: 一時的な発赤。\n\n'
                        '長期的リスク:\n\n'
                        '- 感染: 感染症のリスク。\n'
                        '- アレルギー反応: 色素に対するアレルギー反応。\n'
                        '- 色素の変色: 時間と共に色素が変色する可能性。\n\n'
                        'リスク管理:\n\n'
                        '- 施術前の徹底したアセスメントと消毒。\n'
                        '- 適切なアフターケア指導。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('6. 最新の研究と技術'),
                _buildBodyText(
                    '最新技術:\n\n'
                        '- デジタルマシンの進化: より精密な色素注入が可能な新型デジタルマシンの導入。\n'
                        '- 新しい色素材料: 長期間色を維持し、アレルギーリスクの低い新しい色素材料の開発。\n\n'
                        '研究動向:\n\n'
                        '- 色素の安全性: 新しい色素の安全性と効果に関する研究。\n'
                        '- 持続性の向上: 色素の持続性を高めるための技術革新。\n\n'
                ),

                const SizedBox(height: 20),
                _buildSectionTitle('7. 参考文献'),
                _buildReferenceList([
                  'Journal of Clinical and Aesthetic Dermatology - Permanent Makeup:\nhttps://www.ncbi.nlm.nih.gov/pmc/articles/PMC2923959/',
                  'Aesthetic Surgery Journal - Indications and Contraindications for Permanent Makeup:\nhttps://academic.oup.com/asj/article/40/5/495/5815323',
                  'Dermatologic Surgery - Techniques for Safe and Effective Permanent Makeup:\nhttps://journals.lww.com/dermatologicsurgery/Fulltext/2018/07000/Techniques_for_Safe_and_Effective_Permanent_Makeup.17.aspx',
                  'Journal of Cosmetic and Laser Therapy - Complications in Permanent Makeup:\nhttps://www.tandfonline.com/doi/full/10.1080/14764172.2020.1754307',
                  'Lasers in Surgery and Medicine - Advances in Permanent Makeup Technology:\nhttps://onlinelibrary.wiley.com/doi/10.1002/lsm.23156',
                  'Aesthetic Surgery Journal - Innovations in Permanent Makeup:\nhttps://academic.oup.com/asj/article/38/6/620/5032637'
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
