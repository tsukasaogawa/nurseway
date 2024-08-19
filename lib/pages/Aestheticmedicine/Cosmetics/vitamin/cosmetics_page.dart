import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nurseway_app/pages/Aestheticmedicine/Cosmetics/vitamin/antioxidants_page.dart';
import 'package:nurseway_app/pages/Aestheticmedicine/Cosmetics/vitamin/resveratrol_page.dart';
import 'package:nurseway_app/pages/Aestheticmedicine/Cosmetics/vitamin/vitamin_c_page.dart';
import 'package:nurseway_app/pages/Aestheticmedicine/Cosmetics/vitamin/vitamin_d_page.dart';
import 'package:nurseway_app/pages/Aestheticmedicine/Cosmetics/vitamin/vitamin_e_page.dart';
import 'package:nurseway_app/pages/Aestheticmedicine/Cosmetics/vitamin/vitamin_k_page.dart';

void main() {
  runApp(const MaterialApp(
    home: CosmeticsPage(),
  ));
}

class CosmeticsPage extends StatelessWidget {
  const CosmeticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          title: Text('コラム一覧', style: GoogleFonts.notoSerif(color: Colors.black)),
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
            buildArticleItem(context, 'ビタミンCの驚くべき効果：肌の健康と若返りの最新研究', 'https://www.dropbox.com/scl/fi/xs9ljz3u3ey2i5aj75qfj/DALL-E-2024-06-23-21.09.48-A-detailed-realistic-and-beautiful-image-depicting-the-benefits-of-Vitamin-C-on-the-skin.-The-image-should-showcase-smooth-radiant-skin-with-a-subt.webp?rlkey=yzm3ps15v3zb1hhgtca2xbaax&st=576jwfum&dl=1', const VitaminCPage()),
            buildArticleItem(context, '抗酸化物質と肌の保護：新しい研究成果から見るスキンケアの未来', 'https://www.dropbox.com/scl/fi/c03dkr3b988cinj22rmb9/DALL-E-2024-06-23-21.14.57-A-detailed-realistic-and-beautiful-image-showcasing-the-benefits-of-antioxidants-for-skin-protection.-The-image-should-depict-smooth-radiant-skin-w.webp?rlkey=72nkrozbq6b3zvbqbrjyl8ky5&st=tqs0yfnx&dl=1', const AntioxidantsPage()),
            buildArticleItem(context, 'ビタミンEの美容効果：保湿とアンチエイジングの秘訣', 'https://www.dropbox.com/scl/fi/57m5nlcgu8mkandjr1o1t/DALL-E-2024-06-23-21.18.43-A-vibrant-realistic-and-beautiful-image-showcasing-the-benefits-of-Vitamin-E-for-skin.-The-image-should-depict-smooth-hydrated-and-youthful-lookin.webp?rlkey=t4480noceju8sr09huwb09s37&st=gtljbhgg&dl=1', const VitaminEPage()),
            buildArticleItem(context, 'ビタミンDの肌への影響：紫外線と健康的なスキンケア', 'https://www.dropbox.com/scl/fi/4ccyse5g1aix70jlr3q5q/DALL-E-2024-06-23-21.21.35-A-vibrant-realistic-and-beautiful-image-showcasing-the-effects-of-Vitamin-D-on-the-skin.-The-image-should-depict-smooth-healthy-and-radiant-skin.webp?rlkey=y2fa3usg8p684fy7ydar8jouo&st=vkarfove&dl=1', const VitaminDPage()),
            buildArticleItem(context, 'レスベラトロールとアンチエイジング：赤ワインの成分がもたらす美容効果', 'https://www.dropbox.com/scl/fi/qj2wm7li0t83o1qw2dgev/DALL-E-2024-06-23-21.27.38-A-vibrant-realistic-and-beautiful-image-showcasing-the-anti-aging-benefits-of-resveratrol-a-compound-found-in-red-wine.-The-image-should-depict-smo.webp?rlkey=p98xyxngfeg4wykqtn94y8vc3&st=mva7komu&dl=1', const ResveratrolPage()),
            buildArticleItem(context, 'ビタミンKとダークサークル：目元のケアに役立つ成分', 'https://www.dropbox.com/scl/fi/wwhkrei520kn0iaplk7es/DALL-E-2024-06-23-21.25.04-A-vibrant-realistic-and-beautiful-image-showcasing-the-benefits-of-Vitamin-K-for-reducing-dark-circles-under-the-eyes.-The-image-should-depict-smoot.webp?rlkey=870urdes94od08h8t54sla4xi&st=7d4u3ru9&dl=1', const VitaminKPage()),
          ],
        ),
      ),
    );
  }

  Widget buildArticleItem(BuildContext context, String title, String imageUrl, Widget page) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => page,
              ),
            );
          },
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    title,
                    style: GoogleFonts.notoSerif(fontSize: 16, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(height: 1, color: Colors.grey),
      ],
    );
  }
}
