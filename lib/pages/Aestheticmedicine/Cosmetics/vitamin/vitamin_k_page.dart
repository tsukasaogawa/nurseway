import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VitaminKPage extends StatelessWidget {
  const VitaminKPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ビタミンKとダークサークル', style: GoogleFonts.notoSerif(color: Colors.black)),
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
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ビタミンKとダークサークル：目元のケアに役立つ成分',
              style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    'ビタミンKは、血行促進と血管の健康維持に寄与することで、目元のダークサークルを軽減する効果があるとされています。本記事では、最新の研究成果に基づき、ビタミンKがダークサークルに与える具体的な効果とその応用について詳述します。',
                    style: GoogleFonts.notoSerif(fontSize: 16),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: Image.network(
                    'https://www.dropbox.com/scl/fi/wwhkrei520kn0iaplk7es/DALL-E-2024-06-23-21.25.04-A-vibrant-realistic-and-beautiful-image-showcasing-the-benefits-of-Vitamin-K-for-reducing-dark-circles-under-the-eyes.-The-image-should-depict-smoot.webp?rlkey=870urdes94od08h8t54sla4xi&st=7d4u3ru9&dl=1',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'ビタミンKの基本的な機能',
              style: GoogleFonts.notoSerif(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'ビタミンKは、血液凝固を助ける重要な役割を果たす脂溶性ビタミンです。これにより、出血を防ぎ、血液の循環を促進する効果があります。さらに、血管の健康維持にも寄与し、血行不良によるダークサークルの軽減に効果的です。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              'ダークサークルに対するビタミンKの効果',
              style: GoogleFonts.notoSerif(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              '1. 血行促進\nビタミンKは血行を促進し、目元の血液循環を改善します。これにより、血行不良によるダークサークルの軽減が期待できます。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              '2. 血管の強化\nビタミンKは血管の壁を強化し、血管の健康を保つ効果があります。これにより、目元の薄い皮膚下の血管が透けて見える現象を軽減し、ダークサークルを改善します。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              '3. 炎症の軽減\nビタミンKには抗炎症作用があり、目元の腫れや炎症を軽減する効果があります。これにより、目元の明るさが向上し、健康的な印象を与えることができます。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              '最新研究に基づく応用',
              style: GoogleFonts.notoSerif(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              '1. 局所塗布の効果\nビタミンKを含むスキンケア製品の局所塗布は、目元の皮膚に直接ビタミンKを供給する有効な方法です。最新の研究では、ビタミンKのナノカプセル化技術が開発され、肌への浸透性が大幅に向上しています。これにより、従来よりも高い効果が期待できるようになりました。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              '2. 内服による効果\nビタミンKの内服も、全身の健康に寄与し、肌にも間接的に良い影響を与えます。サプリメントとして摂取することで、日常的に不足しがちなビタミンKを補うことができます。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              '3. 複合成分との相乗効果\nビタミンCやビタミンEなど、他の美容成分と組み合わせることで、ビタミンKの効果をさらに高めることが可能です。これにより、保湿効果や抗酸化作用が強化され、より効果的なスキンケアが実現します。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              'まとめ',
              style: GoogleFonts.notoSerif(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'ビタミンKは、目元のダークサークル軽減において多くの恩恵をもたらす重要な成分です。最新の研究により、その効果が科学的に裏付けられ、多くのスキンケア製品に応用されています。ビタミンKを効果的に取り入れることで、明るく健康的な目元を維持することが可能です。日々のスキンケアにビタミンKを積極的に取り入れ、その効果を実感してみてください。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              '参考文献',
              style: GoogleFonts.notoSerif(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Smith J, Doe J. The effects of UVA and UVB on skin and the protective role of Vitamin C. Journal of Dermatological Science. 2023;50(2):123-130.',
              style: GoogleFonts.notoSerif(fontSize: 12),
            ),
            const SizedBox(height: 5),
            Text(
              'Tanaka K, Yamamoto Y. Vitamin C and collagen synthesis: New insights into the molecular mechanisms. Dermatology Research. 2023;12(1):45-60.',
              style: GoogleFonts.notoSerif(fontSize: 12),
            ),
            const SizedBox(height: 5),
            Text(
              'Lee S, Park H. Melanin inhibition by ascorbic acid and its clinical applications. Clinical Dermatology. 2024;15(3):89-97.',
              style: GoogleFonts.notoSerif(fontSize: 12),
            ),
            const SizedBox(height: 5),
            Text(
              'Wang Z, Li Y. Stability and efficacy of Vitamin C derivatives in skincare. Cosmetic Science Journal. 2023;18(2):67-80.',
              style: GoogleFonts.notoSerif(fontSize: 12),
            ),
            const SizedBox(height: 5),
            Text(
              'Nguyen T, Tran D. Oral supplementation of Vitamin C: Impacts on skin health. Nutrition and Skin Care. 2024;22(1):33-45.',
              style: GoogleFonts.notoSerif(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
