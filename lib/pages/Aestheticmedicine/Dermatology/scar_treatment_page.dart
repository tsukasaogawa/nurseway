import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ScarTreatmentPage extends StatelessWidget {
  const ScarTreatmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('傷跡治療、ケロイド', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '傷跡治療、ケロイドの詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容皮膚科における傷跡治療およびケロイドに関する総合解説',
                  '2. 傷跡治療',
                  '   2.1 基本原理',
                  '   2.2 治療手順',
                  '3. ケロイド治療',
                  '   3.1 基本原理',
                  '   3.2 治療手順',
                  '4. 合併症とリスク管理',
                  '5. 最新の研究と技術',
                  '6. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容皮膚科における傷跡治療およびケロイドに関する総合解説'),
                _buildBodyText(
                    '傷跡治療とケロイド治療は、美容皮膚科において重要な施術の一つです。患者の見た目や生活の質を向上させるために、医療従事者はその理論と技術を十分に理解する必要があります。以下に、主要な治療法、適応症、合併症、最新の研究について詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 傷跡治療'),
                _buildSubSectionTitle('2.1 基本原理'),
                _buildBodyText(
                    '概要:\n'
                        '傷跡は、外傷や手術、炎症などによって皮膚が損傷した後に形成される瘢痕組織です。傷跡治療は、この瘢痕組織を目立たなくし、肌の見た目と機能を改善することを目的としています。\n\n'
                        '主要な治療法:\n\n'
                        '- レーザー治療: フラクショナルレーザーやCO2レーザーを使用して、瘢痕組織を破壊し、新しい皮膚の再生を促進。\n'
                        '- ステロイド注射: 瘢痕組織にステロイドを注入し、炎症とコラーゲンの過剰生成を抑制。\n'
                        '- マイクロニードリング: 微細な針で皮膚に小さな穴を開け、コラーゲン生成を促進。\n'
                        '- 手術的切除: 大きな傷跡やケロイドを切除し、再縫合する。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.2 治療手順'),
                _buildBodyText(
                    '準備:\n\n'
                        '- 施術前の皮膚評価。\n'
                        '- 患者への適切な説明と同意取得。\n\n'
                        '施術:\n\n'
                        '- レーザー治療: 施術部位にレーザーを照射し、瘢痕組織を破壊。\n'
                        '- ステロイド注射: 瘢痕組織に直接ステロイドを注入。\n'
                        '- マイクロニードリング: 施術部位に微細な針を用いて治療。\n'
                        '- 手術的切除: 大きな傷跡やケロイドを切除し、再縫合。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. ケロイド治療'),
                _buildSubSectionTitle('3.1 基本原理'),
                _buildBodyText(
                    '概要:\n'
                        'ケロイドは、傷が治癒する過程で過剰にコラーゲンが生成され、正常な皮膚を超えて成長する瘢痕組織です。ケロイド治療は、この過剰なコラーゲン生成を抑制し、ケロイドのサイズと厚さを減少させることを目的としています。\n\n'
                        '主要な治療法:\n\n'
                        '- ステロイド注射: ケロイドにステロイドを注入し、炎症とコラーゲンの過剰生成を抑制。\n'
                        '- レーザー治療: フラクショナルレーザーやPulsed Dyeレーザーを使用して、ケロイドの赤みを軽減し、組織を軟化。\n'
                        '- 手術的切除: ケロイドを切除し、再発を防ぐためにステロイド注射や放射線治療を併用。\n'
                        '- 圧迫療法: 圧迫ガーメントを使用してケロイドの成長を抑制。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('3.2 治療手順'),
                _buildBodyText(
                    '準備:\n\n'
                        '- 施術前の皮膚評価と治療プランの策定。\n'
                        '- 患者への適切な説明と同意取得。\n\n'
                        '施術:\n\n'
                        '- ステロイド注射: ケロイドに直接ステロイドを注入。\n'
                        '- レーザー治療: 施術部位にレーザーを照射し、ケロイド組織を破壊。\n'
                        '- 手術的切除: ケロイドを切除し、再発防止策を併用。\n'
                        '- 圧迫療法: 圧迫ガーメントを適用。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 合併症とリスク管理'),
                _buildBodyText(
                    '合併症:\n\n'
                        '- 感染\n'
                        '- 出血\n'
                        '- 瘢痕形成\n'
                        '- 色素沈着\n'
                        '- ケロイド再発\n\n'
                    'リスク管理:\n\n'
                        '- 適切な施術前評価とアフターケア。\n'
                        '- 感染予防のための無菌操作。\n'
                        '- 再発防止のための多角的アプローチ。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 最新の研究と技術'),
                _buildBodyText(
                        '最新技術:\n\n'
                        '- 新型レーザー技術: 効果が高く、ダウンタイムが短い新型レーザーの開発。\n'
                        '- コラーゲン生成抑制剤: ケロイド形成を抑制する新しい薬剤の開発。\n\n'
                    '研究動向:\n\n'
                        '- ケロイド形成メカニズム: ケロイドの発生メカニズムに関する研究。\n'
                        '- 再発防止策: ケロイドの再発を防ぐための新しい治療法の研究。\n\n'
                ),

                const SizedBox(height: 20),
                _buildSectionTitle('6. 参考文献'),
                _buildReferenceList([
                    'Journal of the American Academy of Dermatology - Laser Treatment for Scars:\nhttps://www.jaad.org/article/S0190-9622(19)31220-2/fulltext',
                    'Dermatologic Surgery - Techniques for Scar Revision:\nhttps://journals.lww.com/dermatologicsurgery/Fulltext/2016/07000/Techniques_for_Scar_Revision.20.aspx',
                    'Lasers in Surgery and Medicine - Fractional Laser Treatment Protocols:\nhttps://onlinelibrary.wiley.com/doi/10.1002/lsm.22278',
                    'Dermatologic Surgery - Steroid Injection Techniques:\nhttps://journals.lww.com/dermatologicsurgery/Fulltext/2018/07000/Steroid_Injection_Techniques_for_Scars.15.aspx',
                    'Journal of Dermatological Treatment - Keloid Treatment Strategies:\nhttps://www.tandfonline.com/doi/full/10.1080/09546634.2019.1646260',
                    'Lasers in Surgery and Medicine - Laser Treatment for Keloids:\nhttps://onlinelibrary.wiley.com/doi/10.1002/lsm.23030',
                    'Dermatologic Surgery - Combined Approaches for Keloid Treatment:\nhttps://journals.lww.com/dermatologicsurgery/Fulltext/2017/05000/Combined_Approaches_for_Keloid_Treatment.14.aspx',
                    'Journal of Cosmetic and Laser Therapy - Pulsed Dye Laser for Keloids:\nhttps://www.tandfonline.com/doi/full/10.1080/14764172.2018.1423300',
                    'Dermatologic Surgery - Complications in Scar and Keloid Treatments:\nhttps://journals.lww.com/dermatologicsurgery/Fulltext/2016/08000/Complications_in_Scar_and_Keloid_Treatments.18.aspx',
                    'Journal of Dermatological Science - Advances in Scar and Keloid Treatments:\nhttps://www.jdsjournal.com/article/S0923-1811(17)30145-7/fulltext',
                    'International Journal of Molecular Sciences - Mechanisms of Keloid Formation:\nhttps://www.mdpi.com/1422-0067/20/5/1105',
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
