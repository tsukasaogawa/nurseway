import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'AI_usage_examples_page.dart';
import 'JobTips/job_tips_page.dart'; // Add this for URL launching

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
              title: 'エージェントに相談',
              subtitle: '公式LINE', // サブタイトルに「公式LINE」を追加
              icon: Icons.web,
              url: 'https://line.me/ti/p/rFgUkb6aL_', // Add the URL here
              colors: [const Color(0xFFC8E6C9), const Color(0xFFA5D6A7), const Color(0xFF81C784)],
              enabled: true,
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
              page: const AIUsageExamplesPage(),
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
    IconData? icon,
    Widget? page,
    String? url, // Add URL parameter here
    required List<Color> colors,
    required bool enabled,
  }) {
    return AnimatedButton(
      title: title,
      subtitle: subtitle,
      icon: icon,
      page: page,
      url: url, // Pass the URL here
      colors: colors,
      enabled: enabled,
    );
  }
}

class AnimatedButton extends StatefulWidget {
  final String title;
  final String subtitle;
  final IconData? icon;
  final Widget? page;
  final String? url; // URL parameter
  final List<Color> colors;
  final bool enabled;

  const AnimatedButton({
    super.key,
    required this.title,
    required this.subtitle,
    this.icon,
    this.page,
    this.url, // URL parameter
    required this.colors,
    required this.enabled,
  });

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  bool _isPressed = false;

  void _navigateToPage() {
    if (widget.url != null) {
      _launchURL(widget.url!); // Launch the URL if it's provided
    } else if (widget.page != null && widget.enabled) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => widget.page!),
      );
    }
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
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
                      if (widget.icon != null)
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
