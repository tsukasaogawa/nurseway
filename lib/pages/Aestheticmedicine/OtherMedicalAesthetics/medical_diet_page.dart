import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MedicalDietPage extends StatelessWidget {
  const MedicalDietPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('痩身、メディカルダイエット', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '美容医療における痩身・メディカルダイエットに関する総合解説',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 痩身治療の方法',
                  '2. メディカルダイエットの方法',
                  '3. 適応症',
                  '4. 合併症とリスク',
                  '5. 最新の研究と技術',
                  '6. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 痩身治療の方法'),
                _buildSubSectionTitle('脂肪吸引'),
                _buildBodyText(
                    '概要:\n'
                    '脂肪吸引は、体の特定部位から余分な脂肪を物理的に除去する外科的手術です。体型を改善し、理想的なプロポーションを実現するために広く利用されています。\n\n'
                    '手術の方法:\n'
                    '・従来型脂肪吸引: 小さな切開を行い、カニューレを挿入して脂肪を吸引します。\n'
                    '・超音波アシスト脂肪吸引: 超音波を用いて脂肪細胞を破壊し、吸引しやすくします。\n'
                    '・レーザーアシスト脂肪吸引: レーザーエネルギーで脂肪細胞を溶解し、吸引します。\n\n'
                    '利点:\n'
                    '・一度に大量の脂肪を除去可能。\n'
                    '・体型の劇的な改善が期待できる。\n\n'
                    '欠点:\n'
                    '・手術後の回復期間が必要。\n'
                    '・出血、感染、瘢痕形成のリスク。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('冷凍脂肪減少'),
                _buildBodyText(
                    '概要:\n'
                    '冷凍脂肪減少は、脂肪細胞を冷却し、自然に破壊して除去する非侵襲的な治療法です。CoolSculptingというブランド名で知られています。\n\n'
                    '治療の方法:\n'
                    '・特殊なアプリケーターを用いて、脂肪を冷却し、脂肪細胞を凍結・破壊します。\n'
                    '・破壊された脂肪細胞は、数週間から数ヶ月かけて自然に体外に排出されます。\n\n'
                    '利点:\n'
                    '・非侵襲的で、手術の必要がない。\n'
                    '・ダウンタイムがほとんどない。\n\n'
                    '欠点:\n'
                    '・効果が現れるまでに時間がかかる。\n'
                    '・一部の患者で不快感や皮膚の感覚変化が生じることがある。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('高強度焦点式超音波'),
                _buildBodyText(
                    '概要:\n'
                    'HIFUは、高強度の超音波エネルギーを用いて、脂肪細胞を加熱・破壊し、体外に排出する非侵襲的な治療法です。\n\n'
                    '治療の方法:\n'
                    '・特殊な装置を用いて、超音波を脂肪層に焦点を合わせて照射し、脂肪細胞を破壊します。\n\n'
                    '利点:\n'
                    '・非侵襲的で、ダウンタイムがほとんどない。\n'
                    '・短時間で治療が完了する。\n\n'
                    '欠点:\n'
                    '・効果が現れるまでに時間がかかる。\n'
                    '・一部の患者で不快感や皮膚の感覚変化が生じることがある。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('レーザーリポリシス'),
                _buildBodyText(
                    '概要:\n'
                    'レーザーリポリシスは、レーザーエネルギーを用いて脂肪細胞を溶解し、吸引または自然排出させる治療法です。SmartLipoなどのブランド名で知られています。\n\n'
                    '治療の方法:\n'
                    '・レーザーを皮膚の下に挿入し、脂肪細胞を溶解します。\n'
                    '・溶解した脂肪を吸引するか、自然に排出されるのを待ちます。\n\n'
                    '利点:\n'
                    '・非侵襲的で、手術の必要が少ない。\n'
                    '・皮膚の引き締め効果も期待できる。\n\n'
                    '欠点:\n'
                    '・一部の患者で皮膚の感覚変化が生じることがある。\n'
                    '・効果が現れるまでに時間がかかる。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. メディカルダイエットの方法'),
                _buildSubSectionTitle('薬物療法'),
                _buildBodyText(
                    '概要:\n'
                    '薬物療法は、食欲を抑制したり、脂肪の吸収を阻害する薬剤を使用して、体重を減少させる方法です。FDA承認の薬剤には、オルリスタット（Orlistat）、リラグルチド（Liraglutide）、フェンテルミン/トピラマート（Phentermine/Topiramate）などがあります。\n\n'
                    '使用方法:\n'
                    '・医師の指導の下で、適切な薬剤を処方し、服用します。\n\n'
                    '利点:\n'
                    '・薬剤による効果が期待できる。\n'
                    '・ライフスタイルの変更をサポートする。\n\n'
                    '欠点:\n'
                    '・副作用のリスクがある（例：消化不良、頭痛、めまい）。\n'
                    '・長期的な使用には注意が必要。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('バルーン療法'),
                _buildBodyText(
                    '概要:\n'
                    'バルーン療法は、胃内にシリコン製のバルーンを挿入し、食事量を減らすことで体重を減少させる方法です。\n\n'
                    '治療の方法:\n'
                    '・内視鏡を用いて、胃内にバルーンを挿入し、生理食塩水で膨らませます。\n'
                    '・6ヶ月から1年後にバルーンを取り除きます。\n\n'
                    '利点:\n'
                    '・非外科的な方法であり、侵襲性が低い。\n'
                    '・効果的な体重減少が期待できる。\n\n'
                    '欠点:\n'
                    '・一部の患者で不快感や吐き気が生じることがある。\n'
                    '・バルーンの取り出しが必要。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('食事療法と運動療法'),
                _buildBodyText(
                    '概要:\n'
                    '食事療法と運動療法は、カロリー摂取を制限し、運動量を増やすことで体重を減少させる基本的な方法です。メディカルダイエットにおいても、重要な要素となります。\n\n'
                    '治療の方法:\n'
                    '・栄養士やトレーナーの指導の下で、個別の食事プランと運動プログラムを実施します。\n\n'
                    '利点:\n'
                    '・健康的な生活習慣を身につけることができる。\n'
                    '・長期的な体重管理が期待できる。\n\n'
                    '欠点:\n'
                    '・効果が現れるまでに時間がかかる。\n'
                    '・継続的なモチベーションが必要。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 適応症'),
                _buildBodyText(
                    '肥満: BMIが30以上の患者。\n'
                    '過体重: BMIが25以上30未満の患者。\n'
                    '特定部位の脂肪減少: 体型改善を希望する患者。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 合併症とリスク'),
                _buildBodyText(
                    '外科的治療:\n'
                    '・感染、出血、瘢痕形成のリスク。\n'
                    '・一部の患者で皮膚の感覚変化や不快感。\n\n'
                    '薬物療法:\n'
                    '・消化不良、頭痛、めまいなどの副作用。\n'
                    '・長期的な使用によるリスク。\n\n'
                    '非侵襲的治療:\n'
                    '・一時的な不快感や皮膚の感覚変化。\n'
                    '・効果の現れ方に個人差がある。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 最新の研究と技術'),
                _buildBodyText(
                    '最新の研究では、脂肪細胞の代謝を制御する新しい薬剤や、体重管理をサポートするデジタルヘルス技術が注目されています。また、遺伝子治療や幹細胞治療の可能性も探索されています。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('6. 参考文献'),
                _buildReferenceList([
                    'Plastic and Reconstructive Surgery - Liposuction Techniques and Outcomes: https://www.springer.com/series/14003',
                    'Aesthetic Surgery Journal - Ultrasound-Assisted Liposuction: https://academic.oup.com/asj/article/38/9/991/5044322',
                    'Journal of Dermatologic Surgery - Cryolipolysis for Fat Reduction: https://onlinelibrary.wiley.com/doi/abs/10.1111/dsu.12238',
                    'Aesthetic Surgery Journal - Efficacy of CoolSculpting: https://academic.oup.com/asj/article/34/2/209/4772403',
                    'Journal of Cosmetic and Laser Therapy - HIFU for Body Contouring: https://www.tandfonline.com/doi/abs/10.3109/14764172.2013.831064',
                    'Aesthetic Surgery Journal - High-Intensity Focused Ultrasound: https://academic.oup.com/asj/article/35/5/587/2953048',
                    'Plastic and Reconstructive Surgery - Laser Lipolysis Techniques: https://journals.lww.com/plasreconsurg/Abstract/2012/01000/Laser_Assisted_Lipolysis_Versus.18.aspx',
                    'Aesthetic Surgery Journal - SmartLipo Outcomes: https://academic.oup.com/asj/article/36/9/983/2584043',
                    'New England Journal of Medicine - Pharmacotherapy for Obesity: https://www.nejm.org/doi/full/10.1056/NEJMoa2032392',
                    'Journal of Clinical Endocrinology & Metabolism - Efficacy of Weight Loss Medications: https://academic.oup.com/jcem/article/100/2/316/2822778',
                    'Obesity Surgery - Intragastric Balloon Therapy Outcomes: https://link.springer.com/article/10.1007/s11695-016-2060-1',
                    'Journal of Clinical Gastroenterology - Efficacy of Intragastric Balloons: https://journals.lww.com/jcge/Abstract/2016/08000/Intragastric_Balloons_for_Obesity_Treatment_A.5.aspx',
                    'Journal of the Academy of Nutrition and Dietetics - Diet Therapy for Obesity: https://jandonline.org/article/S2212-2672(19)30280-3/fulltext',
                    'Medicine & Science in Sports & Exercise - Exercise Therapy for Weight Loss: https://journals.lww.com/acsm-msse/Abstract/2015/07000/The_Effect_of_Exercise_Intensity_on_Body.7.aspx',
                    'Nature Reviews Drug Discovery - Advances in Obesity Pharmacotherapy: https://www.nature.com/articles/nrd.2016.263',
                    'Journal of Obesity - Digital Health Interventions for Weight Management: https://www.hindawi.com/journals/jobe/2020/9269176/',
                    'Stem Cells Translational Medicine - Stem Cell Therapy for Obesity: https://stemcellsjournals.onlinelibrary.wiley.com/doi/10.1002/sctm.18-0071'
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