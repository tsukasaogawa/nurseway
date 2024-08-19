import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopPageButton extends StatelessWidget {
  const TopPageButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, color: Colors.black), // Icon color
        label: Text(
          title,
          style: GoogleFonts.notoSerif(
            fontSize: 18,
            color: Colors.black,
          ), // Button text style
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(150),
          side: const BorderSide(color: Color(0xFFFFE4E1), width: 2),
          backgroundColor: const Color(0xFFB3E5FC),
        ),
      ),
    );
  }
}
