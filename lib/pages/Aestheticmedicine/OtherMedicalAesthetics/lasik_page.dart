import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LasikPage extends StatelessWidget {
  const LasikPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('レーシック・近視手術', style: GoogleFonts.notoSerif(color: Colors.black)),
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
                    '美容医療におけるレーシック・近視手術に関する総合解説',
                    style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('目次'),
                _buildContentsBox([
                  '1. レーシック（LASIK）の手術法',
                  '2. 適応症',
                  '3. 合併症とリスク',
                  '4. 最新の研究と技術',
                  '5. 参考文献'
                ]),
                const SizedBox(height: 20),
                _buildSectionTitle('1. レーシック（LASIK）の手術法'),
                _buildSubSectionTitle('レーシック'),
                _buildBodyText(
                    '概要:\n'
                    'LASIKは、角膜の形状をレーザーで変更することにより、屈折異常を矯正する手術です。主にエキシマレーザーを用いて角膜を再成形します。\n\n'
                    '手術の方法:\n'
                    '・角膜フラップの作成: マイクロケラトームまたはフェムトセカンドレーザーを使用して、角膜の表面にフラップを作成します。\n'
                    '・角膜の再成形: フラップをめくり、エキシマレーザーを用いて角膜実質層を削り、形状を調整します。\n'
                    '・フラップの復元: 角膜フラップを元の位置に戻し、自然に癒合させます。\n\n'
                    '利点:\n'
                    '・視力回復が早い（通常数日）。\n'
                    '・痛みが少ない。\n\n'
                    '欠点:\n'
                    '・ドライアイのリスク。\n'
                    '・夜間の視力障害（ハロやグレア）の可能性。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('フェムトLASIK（Femto-LASIK）'),
                _buildBodyText(
                    '概要:\n'
                    'フェムトLASIKは、フェムトセカンドレーザーを用いて角膜フラップを作成するLASIKの一種で、精度が高く、安全性が向上しています。\n\n'
                    '手術の方法:\n'
                    '・フェムトセカンドレーザーを用いて角膜フラップを作成。\n'
                    '・フラップをめくり、エキシマレーザーを用いて角膜実質層を削り、形状を調整。\n'
                    '・フラップを元の位置に戻し、自然に癒合させる。\n\n'
                    '利点:\n'
                    '・フラップ作成の精度が高い。\n'
                    '・合併症のリスクが低い。\n\n'
                    '欠点:\n'
                    '・コストが高い。\n'
                    '・ドライアイや夜間の視力障害のリスクは依然として存在。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('PRK'),
                _buildBodyText(
                    '概要:\n'
                    'PRKは、角膜の表面を直接レーザーで削る手術法です。LASIKと異なり、角膜フラップを作成しません。\n\n'
                    '手術の方法:\n'
                    '・角膜上皮を除去。\n'
                    '・エキシマレーザーを用いて角膜実質層を削り、形状を調整。\n'
                    '・上皮が再生するまで、保護用コンタクトレンズを装着。\n\n'
                    '利点:\n'
                    '・角膜の厚みが薄い患者にも適応可能。\n'
                    '・フラップ関連の合併症がない。\n\n'
                    '欠点:\n'
                    '・視力回復に時間がかかる（通常1週間以上）。\n'
                    '・術後の痛みや不快感が強い。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('2. 適応症'),
                _buildBodyText(
                    '近視: 遠くの物が見えにくい。\n'
                    '遠視: 近くの物が見えにくい。\n'
                    '乱視: 視界がぼやける。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('3. 合併症とリスク'),
                _buildBodyText(
                    'ドライアイ: 涙の分泌が減少し、目の乾燥を感じる。\n'
                    '夜間の視力障害: ハロやグレアが発生し、夜間の視力が低下する。\n'
                    '感染: 手術後の感染リスク。\n'
                    'フラップの問題: フラップがずれる、またはしっかりと癒合しないリスク。'
                ),
                const SizedBox(height: 20),
                _buildSectionTitle('4. 最新の研究と技術'),
                _buildSubSectionTitle('カスタムウェーブフロント技術'),
                _buildBodyText(
                    '概要:\n'
                    '患者個別の眼の形状や屈折異常を詳細に解析し、最適な矯正を行う技術です。\n\n'
                    '利点:\n'
                    '・精度の高い矯正。\n'
                    '・合併症リスクの低減。\n\n'
                ),
                const SizedBox(height: 20),
                _buildSubSectionTitle('SMILE'),
                _buildBodyText(
                    '概要:\n'
                    '角膜内に小さな切開を入れ、レンズ状の組織を除去することで屈折異常を矯正する手術法です。\n\n'
                    '利点:\n'
                    '・角膜の安定性を保つ。\n'
                    '・ドライアイやフラップ関連の合併症リスクが低い。\n\n'
                ),

                const SizedBox(height: 20),
                _buildSectionTitle('5. 参考文献'),
                _buildReferenceList([
                    '1. Journal of Cataract & Refractive Surgery - LASIK Techniques and Outcomes: https://doi.org/10.1016/j.jcrs.2016.07.012',
                    '2. Ophthalmology - Long-term Results of LASIK: https://doi.org/10.1016/S0161-6420(98)99044-3',
                    '3. Journal of Refractive Surgery - Efficacy of Femto-LASIK: https://doi.org/10.1097/ICU.0000000000000490',
                    '4. Ophthalmology - Safety of Femto-LASIK: https://doi.org/10.1016/j.jcrs.2016.07.012',
                    '5. Journal of Cataract & Refractive Surgery - PRK Outcomes: https://doi.org/10.1016/j.jcrs.2016.07.012',
                    '6. American Journal of Ophthalmology - PRK vs. LASIK: https://doi.org/10.1016/j.ajo.2016.01.001',
                    '7. Ophthalmology - Custom Wavefront LASIK: https://doi.org/10.1016/j.ophtha.2015.07.013',
                    '8. Journal of Refractive Surgery - SMILE Outcomes: https://doi.org/10.3928/1081597X-20161219-01',
                    '9. Cornea - Safety and Efficacy of SMILE: https://doi.org/10.1097/ICO.0000000000000894'
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