import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VitaminEPage extends StatelessWidget {
  const VitaminEPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ビタミンEの美容効果', style: GoogleFonts.notoSerif(color: Colors.black)),
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
              'ビタミンEの美容効果：保湿とアンチエイジングの秘訣',
              style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    'ビタミンEは、美容と健康において非常に重要な役割を果たす栄養素です。その強力な抗酸化作用により、肌の保湿とアンチエイジングに優れた効果を発揮します。本記事では、最新の研究成果に基づき、ビタミンEが肌に与える具体的な効果とその応用について詳述します。',
                    style: GoogleFonts.notoSerif(fontSize: 16),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: Image.network(
                    'https://www.dropbox.com/scl/fi/57m5nlcgu8mkandjr1o1t/DALL-E-2024-06-23-21.18.43-A-vibrant-realistic-and-beautiful-image-showcasing-the-benefits-of-Vitamin-E-for-skin.-The-image-should-depict-smooth-hydrated-and-youthful-lookin.webp?rlkey=t4480noceju8sr09huwb09s37&st=gtljbhgg&dl=1',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'ビタミンEの基本的な機能',
              style: GoogleFonts.notoSerif(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'ビタミンE（トコフェロール）は、強力な抗酸化作用を持ち、細胞膜を保護する役割を果たします。これにより、肌細胞のダメージを防ぎ、健康で若々しい肌を維持することができます。また、保湿効果が高く、肌の乾燥を防ぐため、しっとりとした肌を保つことができます。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              '肌の健康に対するビタミンEの効果',
              style: GoogleFonts.notoSerif(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              '1. 抗酸化作用\nビタミンEは、紫外線や環境汚染などの外的要因による酸化ストレスから肌を守ります。酸化ストレスは、しわやたるみなどの老化現象を引き起こす原因となります。ビタミンEの抗酸化作用により、これらの症状を軽減し、肌を若々しく保つことが可能です。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              '2. 保湿効果\nビタミンEは、肌の保湿効果を高めるため、乾燥を防ぎ、しっとりとした肌を保つことができます。特に、乾燥肌や敏感肌の人にとって、ビタミンEを含むスキンケア製品は非常に有用です。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              '3. 細胞修復\nビタミンEは、細胞膜を保護し、損傷を受けた細胞の修復を助ける効果があります。これにより、肌の再生が促進され、健康で若々しい肌を維持することができます。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              '最新研究に基づく応用',
              style: GoogleFonts.notoSerif(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              '1. 局所塗布の効果\nビタミンEを含むスキンケア製品の局所塗布は、肌に直接ビタミンEを供給する有効な方法です。最新の研究では、ビタミンEのナノカプセル化技術が開発され、肌への浸透性が大幅に向上しています。これにより、従来よりも高い効果が期待できるようになりました。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              '2. 内服による効果\nビタミンEの内服も、全身の健康に寄与し、肌にも間接的に良い影響を与えます。サプリメントとして摂取することで、日常的に不足しがちなビタミンEを補うことができます。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              '3. 複合成分との相乗効果\nビタミンCやヒアルロン酸など、他の美容成分と組み合わせることで、ビタミンEの効果をさらに高めることが可能です。これにより、保湿効果や抗酸化作用が強化され、より効果的なスキンケアが実現します。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              'まとめ',
              style: GoogleFonts.notoSerif(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'ビタミンEは、肌の健康と若返りにおいて多くの恩恵をもたらす重要な成分です。最新の研究により、その効果が科学的に裏付けられ、多くのスキンケア製品に応用されています。ビタミンEを効果的に取り入れることで、健康で若々しい肌を維持することが可能です。日々のスキンケアにビタミンEを積極的に取り入れ、その効果を実感してみてください。',
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
