import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HifuLiftingPage extends StatelessWidget {
  const HifuLiftingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HIFU・照射系リフトアップ治療', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    'HIFU・照射系リフトアップ治療の詳細ページ',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. 美容皮膚科におけるHIFUおよび照射系リフトアップ治療に関する総合解説',
                  '2. HIFU（高密度焦点式超音波）治療',
                  '   2.1 基本原理',
                  '   2.2 治療手順',
                  '3. 照射系リフトアップ治療',
                  '   3.1 基本原理',
                  '   3.2 治療手順',
                  '4. 適応と禁忌',
                  '5. 合併症とリスク管理',
                  '6. 最新の研究と技術',
                  '7. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. 美容皮膚科におけるHIFUおよび照射系リフトアップ治療に関する総合解説'),
                _buildBodyText(
                    'HIFU（高密度焦点式超音波）およびその他の照射系リフトアップ治療は、非侵襲的な方法で皮膚のたるみやシワを改善するための主要な手段として、美容皮膚科で広く使用されています。これらの治療法に関する基本原理、適応、合併症、最新の研究について詳細に解説します。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. HIFU（高密度焦点式超音波）治療'),
                _buildSubSectionTitle('2.1 基本原理'),
                _buildBodyText(
                    '概要:\n'
                        'HIFU治療は、超音波エネルギーを皮膚の深部に焦点を当てて加熱することで、コラーゲン生成を刺激し、皮膚の引き締め効果をもたらします。\n\n'
                        'メカニズム:\n\n'
                        '- 高密度の超音波エネルギーが皮膚深部の特定の層に集中し、熱凝固点を形成。\n'
                        '- これにより、SMAS（表在性筋膜系）や真皮層のコラーゲン再生が促進され、リフトアップ効果を発揮。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('2.2 治療手順'),
                _buildBodyText(
                    '準備:\n\n'
                        '- 施術部位の評価とマーキング。\n'
                        '- 超音波ジェルの塗布。\n\n'
                        '施術:\n\n'
                        '- 超音波プローブを用いて、焦点を当てる層に合わせてエネルギーを照射。\n'
                        '- 顔全体、顎、首などのターゲットエリアに適用。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 照射系リフトアップ治療'),
                _buildSubSectionTitle('3.1 基本原理'),
                _buildBodyText(
                    '概要:\n'
                        '照射系リフトアップ治療には、レーザー、ラジオ波（RF）、および光治療が含まれます。これらの技術は皮膚の深部に熱エネルギーを届けることで、コラーゲン生成を刺激し、皮膚の引き締め効果をもたらします。\n\n'
                        '主要技術:\n\n'
                        '- フラクショナルレーザー: 微小なレーザー光が皮膚に穴を開け、治癒過程でコラーゲンが生成される。\n'
                        '- ラジオ波（RF）治療: 高周波エネルギーが皮膚の深部を加熱し、コラーゲン生成を促進。\n'
                        '- IPL（インテンス・パルス・ライト）: 広範囲の光エネルギーを用いて、皮膚の引き締めと色素沈着の改善。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('3.2 治療手順'),
                _buildBodyText(
                    '準備:\n\n'
                        '- 施術部位の評価とマーキング。\n'
                        '- 施術前のクーリングジェルまたは麻酔クリームの適用。\n\n'
                        '施術:\n\n'
                        '- 適切なエネルギー設定と照射方法を選択。\n'
                        '- 顔全体、目の周り、首などのターゲットエリアに照射。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 適応と禁忌'),
                _buildBodyText(
                    '適応症:\n\n'
                        '- 顔や首の皮膚のたるみ。\n'
                        '- シワや細かいラインの改善。\n'
                        '- 皮膚の質感改善と引き締め。\n\n'
                        '禁忌:\n\n'
                        '- 施術部位に開放創や感染症がある場合。\n'
                        '- 妊娠中または授乳中の女性。\n'
                        '- ペースメーカーなどの金属インプラントがある場合（RF治療）。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('5. 合併症とリスク管理'),
                _buildBodyText(
                    '短期的リスク:\n\n'
                        '- 赤み: 照射直後の一時的な発赤。\n'
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
                    '- 新型HIFUデバイス: 効果が高く、痛みが少ない新型HIFUデバイスの開発。\n'
                    '- マルチモーダル治療: HIFUとRF、IPLの組み合わせ治療による相乗効果の研究。\n\n'
                    '研究動向:\n\n'
                    '- 非侵襲的リフトアップの長期効果: 長期的なリフトアップ効果と安全性に関する研究。\n'
                    '- 個別化治療: 患者の皮膚タイプや状態に応じた個別化治療プロトコルの開発。\n\n'
                ),

                const SizedBox(height: 20),
                _buildSectionTitle('7. 参考文献'),
                _buildReferenceList([
                  'Journal of Cosmetic and Laser Therapy - Mechanism and Efficacy of HIFU:\nhttps://www.tandfonline.com/doi/full/10.1080/14764172.2018.1423252',
                  'Lasers in Surgery and Medicine - HIFU Treatment Protocols:\nhttps://onlinelibrary.wiley.com/doi/10.1002/lsm.22676',
                  'Dermatologic Surgery - Fractional Laser and RF for Skin Tightening:\nhttps://journals.lww.com/dermatologicsurgery/Fulltext/2017/08000/Fractional_Laser_and_RF_for_Skin_Tightening.14.aspx',
                  'Journal of Cosmetic and Laser Therapy - Protocols for RF and IPL Treatments:\nhttps://www.tandfonline.com/doi/full/10.1080/14764172.2018.1471732',
                  'Aesthetic Surgery Journal - Indications and Contraindications for HIFU and RF:\nhttps://academic.oup.com/asj/article/38/5/558/4992256',
                  'Dermatologic Surgery - Complications in HIFU and RF Treatments:\nhttps://journals.lww.com/dermatologicsurgery/Fulltext/2019/01000/Complications_in_HIFU_and_RF_Treatments.15.aspx',
                  'Lasers in Surgery and Medicine - Advances in Non-Invasive Skin Tightening:\nhttps://onlinelibrary.wiley.com/doi/10.1002/lsm.23010',
                  'Journal of Cosmetic and Laser Therapy - Innovations in HIFU and RF Treatments:\nhttps://www.tandfonline.com/doi/full/10.1080/14764172.2020.1769176'
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
