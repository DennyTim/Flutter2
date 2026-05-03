import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardFooter extends StatelessWidget {
  const CardFooter({
    required this.title,
    required this.placeholder,
    super.key
  });

  final String title;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 26, left: 16, right: 16, bottom: 26),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: GoogleFonts.nunitoSans(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: placeholder,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Color.fromRGBO(32, 33, 36, 0.24),
                  width: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
