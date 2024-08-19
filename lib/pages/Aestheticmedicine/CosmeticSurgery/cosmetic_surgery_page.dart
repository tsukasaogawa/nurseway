import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nurseway_app/pages/Aestheticmedicine/CosmeticSurgery/tattoo_removal_page.dart';
import 'package:nurseway_app/pages/Aestheticmedicine/CosmeticSurgery/wrinkle_surgery_page.dart';
import 'breast_surgery_page.dart';
import 'buttock_surgery_page.dart';
import 'ear_surgery_page.dart';
import 'eye_surgery_page.dart'; // 詳細ページをインポート
import 'eyebag_surgery_page.dart';
import 'face_surgery_page.dart';
import 'gynecology_surgery_page.dart';
import 'lip_surgery_page.dart';
import 'liposuction_page.dart';
import 'male_genital_surgery_page.dart';
import 'navel_surgery_page.dart';
import 'nipple_surgery_page.dart';
import 'nose_surgery_page.dart';

class CosmeticSurgeryPage extends StatelessWidget {
  const CosmeticSurgeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          title: Text('美容外科', style: GoogleFonts.notoSerif(color: Colors.black)),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            buildGradientButton(context, '目・二重整形', const EyeSurgeryPage()),
            buildGradientButton(context, '目元・クマ・眉下・涙袋整形', const EyebagSurgeryPage()),
            buildGradientButton(context, '鼻の整形', const NoseSurgeryPage()),
            buildGradientButton(context, 'しわ・たるみ整形', const WrinkleSurgeryPage()),
            buildGradientButton(context, '輪郭・顎・エラ・額・小顔整形', const FaceSurgeryPage()),
            buildGradientButton(context, '耳の整形', const EarSurgeryPage()),
            buildGradientButton(context, '口元・唇の整形・人中短縮', const LipSurgeryPage()),
            buildGradientButton(context, '豊胸・胸の整形', const BreastSurgeryPage()),
            buildGradientButton(context, '乳首・乳輪の整形', const NippleSurgeryPage()),
            buildGradientButton(context, '脂肪吸引', const LiposuctionPage()),
            buildGradientButton(context, 'へそ形成', const NavelSurgeryPage()),
            buildGradientButton(context, '豊尻・ヒップアップ', const ButtockSurgeryPage()),
            buildGradientButton(context, '婦人科形成', const GynecologySurgeryPage()),
            buildGradientButton(context, '男性器形成', const MaleGenitalSurgeryPage()),
            buildGradientButton(context, 'タトゥー除去', const TattooRemovalPage()),
          ],
        ),
      ),
    );
  }

  Widget buildGradientButton(BuildContext context, String title, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFFFE4E1), Color(0xFFFFC0CB), Color(0xFFFFB6C1)], // 桜色のグラデーション
            stops: [0.0, 0.5, 1.0],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => page,
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50), backgroundColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(vertical: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            shadowColor: Colors.transparent,
          ),
          child: Text(
            title,
            style: GoogleFonts.notoSerif(fontSize: 18, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
