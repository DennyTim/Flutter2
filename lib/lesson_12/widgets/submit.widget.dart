import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({required this.btnText, super.key});

  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12, right: 12, left: 12, bottom: 21),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(17, 53, 186, 1.0),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        ),
        child: Text(
          btnText,
          style: GoogleFonts.nunitoSans(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
