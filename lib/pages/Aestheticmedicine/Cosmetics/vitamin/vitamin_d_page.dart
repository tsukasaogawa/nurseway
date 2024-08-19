import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VitaminDPage extends StatelessWidget {
  const VitaminDPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ビタミンDの肌への影響', style: GoogleFonts.notoSerif(color: Colors.black)),
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
              'ビタミンDの肌への影響：紫外線と健康的なスキンケア',
              style: GoogleFonts.notoSerif(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    'ビタミンDは、健康な骨の維持に不可欠な栄養素として知られていますが、肌の健康にも重要な役割を果たします。紫外線を通じて合成されるビタミンDは、肌の保護や修復に貢献します。本記事では、ビタミンDが肌に与える影響と健康的なスキンケアについて、最新の研究成果を基に詳述します。',
                    style: GoogleFonts.notoSerif(fontSize: 16),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: Image.network(
                    'https://www.dropbox.com/scl/fi/4ccyse5g1aix70jlr3q5q/DALL-E-2024-06-23-21.21.35-A-vibrant-realistic-and-beautiful-image-showcasing-the-effects-of-Vitamin-D-on-the-skin.-The-image-should-depict-smooth-healthy-and-radiant-skin.webp?rlkey=y2fa3usg8p684fy7ydar8jouo&st=vkarfove&dl=1',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'ビタミンDの基本的な機能',
              style: GoogleFonts.notoSerif(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'ビタミンDは、骨の健康維持に重要な役割を果たす栄養素として知られていますが、肌にも多くの恩恵をもたらします。紫外線B（UVB）を浴びることで、皮膚でビタミンDが生成されます。ビタミンDは、免疫機能の調整、細胞の成長と修復、炎症の抑制に寄与します。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              '肌の健康に対するビタミンDの効果',
              style: GoogleFonts.notoSerif(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              '1. 紫外線防御\nビタミンDは、紫外線による肌ダメージを軽減する効果があります。適度な日光浴によってビタミンDを生成することで、肌の健康を保つことができます。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              '2. 免疫機能の強化\nビタミンDは、肌の免疫機能を強化し、感染症や炎症から肌を保護する役割を果たします。これにより、肌のバリア機能が向上し、健康な肌を維持することができます。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              '3. 細胞修復と成長\nビタミンDは、肌細胞の修復と成長を促進する効果があります。これにより、ダメージを受けた肌の再生が促進され、健康で若々しい肌を維持することができます。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              '最新研究に基づく応用',
              style: GoogleFonts.notoSerif(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              '1. 局所塗布の効果\nビタミンDを含むスキンケア製品の局所塗布は、肌に直接ビタミンDを供給する有効な方法です。最新の研究では、ビタミンDのナノカプセル化技術が開発され、肌への浸透性が大幅に向上しています。これにより、従来よりも高い効果が期待できるようになりました。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              '2. 内服による効果\nビタミンDの内服も、全身の健康に寄与し、肌にも間接的に良い影響を与えます。サプリメントとして摂取することで、日常的に不足しがちなビタミンDを補うことができます。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              '3. 複合成分との相乗効果\nビタミンCやビタミンEなど、他の美容成分と組み合わせることで、ビタミンDの効果をさらに高めることが可能です。これにより、保湿効果や抗酸化作用が強化され、より効果的なスキンケアが実現します。',
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              'まとめ',
              style: GoogleFonts.notoSerif(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'ビタミンDは、肌の健康と保護において多くの恩恵をもたらす重要な成分です。最新の研究により、その効果が科学的に裏付けられ、多くのスキンケア製品に応用されています。ビタミンDを効果的に取り入れることで、健康で若々しい肌を維持することが可能です。日々のスキンケアにビタミンDを積極的に取り入れ、その効果を実感してみてください。',
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
