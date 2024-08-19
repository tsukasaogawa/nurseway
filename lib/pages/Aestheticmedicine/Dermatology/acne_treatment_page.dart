import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AcneTreatmentPage extends StatelessWidget {
  const AcneTreatmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ニキビ・ニキビ跡の治療', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    'ニキビ・ニキビ跡の治療の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容皮膚科におけるニキビ・ニキビ跡の治療に関する総合解説',
                  '2. ニキビの病態生理',
                  '3. ニキビ治療法',
                  '   3.1 外用療法',
                  '   3.2 経口療法',
                  '4. ニキビ跡の治療法',
                  '   4.1 レーザー治療',
                  '   4.2 ケミカルピーリング',
                  '   4.3 マイクロニードリング',
                  '5. 合併症とリスク管理',
                  '6. 最新の研究と技術',
                  '7. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容皮膚科におけるニキビ・ニキビ跡の治療に関する総合解説'),
                _buildBodyText(
                    'ニキビおよびニキビ跡の治療は、美容皮膚科における主要な診療項目の一つです。効果的な治療を提供するためには、ニキビの病態生理、治療法、最新の研究について深い理解が必要です。本ガイドでは、これらの内容を詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. ニキビの病態生理'),
                _buildBodyText(
                    '概要:\n'
                        'ニキビ（尋常性痤瘡）は、皮脂腺の過剰な皮脂分泌、毛穴の閉塞、Propionibacterium acnes（アクネ菌）の増殖、炎症反応などが原因で発生します。\n\n'
                        '病態生理:\n\n'
                        '- 皮脂分泌の過剰: ホルモンの影響により皮脂腺が活性化。\n'
                        '- 毛包の閉塞: 過剰な皮脂と角質が毛穴を塞ぎ、コメド形成。\n'
                        '- アクネ菌の増殖: 閉塞した毛包内でアクネ菌が繁殖し、炎症を引き起こす。\n'
                        '- 炎症反応: 免疫応答により、毛包周囲に炎症が起きる。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. ニキビ治療法'),
                _buildSubSectionTitle('3.1 外用療法'),
                _buildBodyText(
                    'レチノイド:\n\n'
                        '- 機序: 角質のターンオーバーを促進し、毛穴の閉塞を防ぐ。\n'
                        '- 例: トレチノイン、アダパレン。\n\n'
                        'ベンゾイルペルオキシド:\n\n'
                        '- 機序: 抗菌作用によりアクネ菌を抑制。\n'
                        '- 利点: 速効性があり、耐性菌が発生しにくい。\n\n'
                        '抗菌薬:\n\n'
                        '- 機序: 細菌の増殖を抑制し、炎症を軽減。\n'
                        '- 例: クリンダマイシン、エリスロマイシン。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('3.2 経口療法'),
                _buildBodyText(
                    '経口抗菌薬:\n\n'
                        '- 機序: 全身的な抗菌作用によりアクネ菌を抑制。\n'
                        '- 例: ドキシサイクリン、ミノサイクリン。\n\n'
                        'ホルモン療法:\n\n'
                        '- 機序: アンドロゲンの作用を抑制し、皮脂分泌を減少。\n'
                        '- 例: 経口避妊薬、スピロノラクトン。\n\n'
                        'イソトレチノイン:\n\n'
                        '- 機序: 皮脂腺の活動を抑制し、皮膚のターンオーバーを正常化。\n'
                        '- 注意: 重篤な副作用のリスクがあり、厳密な管理が必要。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. ニキビ跡の治療法'),
                _buildSubSectionTitle('4.1 レーザー治療'),
                _buildBodyText(
                    'フラクショナルレーザー:\n\n'
                        '- 機序: 微小なレーザー光を皮膚に照射し、コラーゲン生成を促進。\n'
                        '- 利点: ダウンタイムが短く、効果が高い。\n\n'
                        '炭酸ガス（CO2）レーザー:\n\n'
                        '- 機序: 皮膚表面を蒸散させ、新しい皮膚の再生を促す。\n'
                        '- 利点: 深い凹凸に効果的。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('4.2 ケミカルピーリング'),
                _buildBodyText(
                    '概要:\n\n'
                        '- 機序: 酸性の溶液を皮膚に適用し、表皮を剥離させることで新しい皮膚の生成を促進。\n'
                        '- 例: サリチル酸、グリコール酸。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('4.3 マイクロニードリング'),
                _buildBodyText(
                    '概要:\n\n'
                        '- 機序: 微小な針で皮膚に微細な傷をつけ、自然治癒過程でコラーゲン生成を促進。\n'
                        '- 利点: 非侵襲的で、ダウンタイムが短い。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 合併症とリスク管理'),
                _buildBodyText(
                    '短期的リスク:\n\n'
                        '- 赤み: 一時的な発赤。\n'
                        '- 腫れ: 軽度の腫れ。\n\n'
                        '長期的リスク:\n\n'
                    '- 色素沈着: 特に色素沈着しやすい皮膚タイプにおいてリスクが高い。\n'
                    '- 瘢痕形成: 不適切な施術による瘢痕形成の可能性。\n\n'
                    'リスク管理:\n\n'
                    '- 適切な施術前評価とアフターケア。\n'
                    '- 患者への適切な説明と同意取得。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('6. 最新の研究と技術'),
                _buildBodyText(
                    '最新技術:\n\n'
                    '- 新型レーザー: 効果が高く、ダウンタイムが短い新型レーザーの開発。\n'
                    '- バイオマテリアル: コラーゲン生成を促進する新しいバイオマテリアルの応用。\n\n'
                    '研究動向:\n\n'
                    '- プロバイオティクス: 皮膚のマイクロバイオームを調整することでニキビを抑制する研究。\n'
                    '- 遺伝子治療: 特定の遺伝子をターゲットにした新しい治療法の開発。\n\n'
                ),

                const SizedBox(height: 20),
                _buildSectionTitle('7. 参考文献'),
                _buildReferenceList([
                  'Journal of Clinical and Aesthetic Dermatology - Pathophysiology of Acne:\nhttps://www.ncbi.nlm.nih.gov/pmc/articles/PMC2923959/',
                  'American Academy of Dermatology - Guidelines for the Management of Acne:\nhttps://www.aad.org/member/clinical-guidelines/acne',
                  'Journal of the American Academy of Dermatology - Oral Antibiotics for Acne:\nhttps://www.jaad.org/article/S0190-9622(15)02418-6/fulltext',
                  'Lasers in Surgery and Medicine - Fractional Laser Treatment for Acne Scars:\nhttps://onlinelibrary.wiley.com/doi/full/10.1002/lsm.22150',
                  'Dermatologic Surgery - Chemical Peels for Acne Scars:\nhttps://journals.lww.com/dermatologicsurgery/Fulltext/2017/07000/Chemical_Peels_for_Acne_Scars.12.aspx',
                  'Journal of Cutaneous and Aesthetic Surgery - Microneedling for Acne Scars:\nhttps://www.ncbi.nlm.nih.gov/pmc/articles/PMC3047927/',
                  'Dermatologic Surgery - Complications in Acne Treatment:\nhttps://journals.lww.com/dermatologicsurgery/Fulltext/2016/01000/Complications_in_Acne_Treatment.12.aspx',
                  'Journal of Dermatological Science - Advances in Acne Treatment:\nhttps://www.jdsjournal.com/article/S0923-1811(17)30310-5/fulltext',
                  'International Journal of Molecular Sciences - Gene Therapy for Acne:\nhttps://www.mdpi.com/1422-0067/21/3/905'
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
