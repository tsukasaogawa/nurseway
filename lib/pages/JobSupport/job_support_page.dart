import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nurseway_app/pages/JobSupport/recommendedjob_sites_page.dart';
import 'AI_usage_examples_page.dart';
import 'JobTips/job_tips_page.dart';

class JobSupportPage extends StatefulWidget {
  const JobSupportPage({super.key});

  @override
  _JobSupportPageState createState() => _JobSupportPageState();
}

class _JobSupportPageState extends State<JobSupportPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          title: Text('転職支援', style: GoogleFonts.notoSerif(color: Colors.black)),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFC8E6C9), Color(0xFFA5D6A7), Color(0xFF81C784)],
                stops: [0.0, 0.5, 1.0],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildGradientButton(
              context,
              title: 'オススメ転職サイト',
              subtitle: '準備中',
              icon: Icons.web,
              page: RecommendedJobSitesPage(),
              colors: [const Color(0xFFC8E6C9), const Color(0xFFA5D6A7), const Color(0xFF81C784)],
              enabled: false,
            ),
            const SizedBox(height: 20),
            _buildGradientButton(
              context,
              title: '転職のコツ',
              subtitle: '',
              icon: Icons.people,
              page: JobTipsPage(),
              colors: [const Color(0xFFC8E6C9), const Color(0xFFA5D6A7), const Color(0xFF81C784)],
              enabled: true,
            ),
            const SizedBox(height: 20),
            _buildGradientButton(
              context,
              title: 'AI相談活用例',
              subtitle: '',
              icon: Icons.lightbulb,
              page: AIUsageExamplesPage(),
              colors: [const Color(0xFFC8E6C9), const Color(0xFFA5D6A7), const Color(0xFF81C784)],
              enabled: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGradientButton(BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Widget page,
    required List<Color> colors,
    required bool enabled,
  }) {
    return AnimatedButton(
      title: title,
      subtitle: subtitle,
      icon: icon,
      page: page,
      colors: colors,
      enabled: enabled,
    );
  }
}

class AnimatedButton extends StatefulWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Widget page;
  final List<Color> colors;
  final bool enabled;

  const AnimatedButton({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.page,
    required this.colors,
    required this.enabled,
  });

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  bool _isPressed = false;

  void _navigateToPage() {
    if (widget.enabled) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => widget.page),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: widget.enabled
          ? (_) {
              setState(() {
                _isPressed = true;
              });
            }
          : null,
      onTapUp: widget.enabled
          ? (_) {
              setState(() {
                _isPressed = false;
              });
              _navigateToPage();
            }
          : null,
      onTapCancel: widget.enabled
          ? () {
              setState(() {
                _isPressed = false;
              });
            }
          : null,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        height: _isPressed ? 90 : 120,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: widget.colors,
            stops: const [0.0, 0.5, 1.0],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          boxShadow: _isPressed
              ? []
              : [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8.0,
                    offset: const Offset(0, 4),
                  ),
                ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: widget.enabled ? _navigateToPage : null,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(widget.icon, color: widget.enabled ? Colors.black : Colors.grey, size: 32),
                      const SizedBox(width: 10),
                      Text(
                        widget.title,
                        style: GoogleFonts.notoSerif(
                          color: widget.enabled ? Colors.black : Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  if (widget.subtitle.isNotEmpty)
                    Text(
                      widget.subtitle,
                      style: GoogleFonts.notoSerif(
                        color: widget.enabled ? Colors.black : Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
