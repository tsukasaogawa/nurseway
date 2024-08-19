import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'CosmeticSurgery/cosmetic_surgery_page.dart';
import 'Dermatology/dermatology_page.dart';
import 'OtherMedicalAesthetics/other_medical_aesthetics_page.dart';

class BasicAestheticMedicinePage extends StatelessWidget {
  const BasicAestheticMedicinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0), // AppBar height
        child: AppBar(
          title: Text('美容医療の基礎', style: GoogleFonts.notoSerif(color: Colors.black)),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFFE4E1), Color(0xFFFFC0CB), Color(0xFFFFB6C1)],
                stops: [0.0, 0.66, 1.0],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          backgroundColor: Colors.transparent, // To make AppBar background transparent
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 10), // Top margin
              _buildGradientButton(context, '美容外科', const CosmeticSurgeryPage()),
              const SizedBox(height: 10), // Space between search bar and buttons
              _buildGradientButton(context, '美容皮膚科', const DermatologyPage()),
              const SizedBox(height: 10),
              _buildGradientButton(context, 'その他美容医療', const OtherMedicalAestheticsPage()),
              const SizedBox(height: 20), // Bottom margin
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGradientButton(BuildContext context, String title, Widget page) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      height: 150, // Button height
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFFFE4E1), Color(0xFFFFC0CB), Color(0xFFFFB6C1)], // 桜色のグラデーション
          stops: [0.0, 0.66, 1.0],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(30), // Increased border radius
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black, // テキスト色
          minimumSize: const Size(double.infinity, 150), // ボタンの高さを少し増やす
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // ボタンの形状
          ),
          textStyle: GoogleFonts.notoSerif(fontSize: 18), // フォントを明朝体に設定
          backgroundColor: Colors.transparent, // 背景を透明に設定
          shadowColor: Colors.transparent, // 影の色を透明に設定
        ),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            title,
            style: GoogleFonts.notoSerif(
              color: Colors.black, // Text color changed to black
              fontSize: 18, // Font size
            ),
          ),
        ),
      ),
    );
  }
}
