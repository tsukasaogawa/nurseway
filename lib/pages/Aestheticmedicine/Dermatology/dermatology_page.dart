import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'hair_removal_page.dart';
import 'mole_removal_page.dart';
import 'permanent_makeup_page.dart';
import 'acne_treatment_page.dart';
import 'hifu_lifting_page.dart';
import 'blemish_treatment_page.dart';
import 'scar_treatment_page.dart';

class DermatologyPage extends StatelessWidget {
  const DermatologyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          title: Text('美容皮膚科', style: GoogleFonts.notoSerif(color: Colors.black)),
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
            buildGradientButton(context, '医療脱毛', const HairRemovalPage()),
            buildGradientButton(context, 'ほくろ除去・あざ治療・イボ治療', const MoleRemovalPage()),
            buildGradientButton(context, 'アートメイク', const PermanentMakeupPage()),
            buildGradientButton(context, 'ニキビ・ニキビ跡の治療', const AcneTreatmentPage()),
            buildGradientButton(context, 'HIFU・照射系リフトアップ治療', const HifuLiftingPage()),
            buildGradientButton(context, 'シミ取り・肝斑・毛穴治療', const BlemishTreatmentPage()),
            buildGradientButton(context, '傷跡治療、ケロイド', const ScarTreatmentPage()),
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
