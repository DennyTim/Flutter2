import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTitle extends StatelessWidget {
  const CardTitle({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
      child: Text(
        title,
        style: GoogleFonts.nunitoSans(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
