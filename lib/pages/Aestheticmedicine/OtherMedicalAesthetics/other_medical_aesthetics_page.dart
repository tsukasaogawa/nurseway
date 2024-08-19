import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'hyperhidrosis_surgery_page.dart';
import 'hair_transplant_page.dart';
import 'hair_loss_treatment_page.dart';
import 'medical_diet_page.dart';
import 'regenerative_medicine_page.dart';
import 'piercing_page.dart';
import 'lasik_page.dart';
import 'cosmetic_dentistry_page.dart';

class OtherMedicalAestheticsPage extends StatelessWidget {
  const OtherMedicalAestheticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          title: Text('その他美容医療', style: GoogleFonts.notoSerif(color: Colors.black)),
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
          children: [
            buildGradientButton(context, 'わきが手術・多汗症治療', const HyperhidrosisSurgeryPage()),
            buildGradientButton(context, '植毛・自毛植毛', const HairTransplantPage()),
            buildGradientButton(context, '薄毛治療', const HairLossTreatmentPage()),
            buildGradientButton(context, '痩身・メディカルダイエット', const MedicalDietPage()),
            buildGradientButton(context, '再生医療・美容点滴', const RegenerativeMedicinePage()),
            buildGradientButton(context, 'ピアス穴あけ', const PiercingPage()),
            buildGradientButton(context, 'レーシック・近視手術', const LasikPage()),
            buildGradientButton(context, '審美歯科', const CosmeticDentistryPage()),
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
