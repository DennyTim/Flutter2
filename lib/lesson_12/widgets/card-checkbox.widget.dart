import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardCheckbox extends StatefulWidget {
  const CardCheckbox({required this.title, super.key});

  final String title;

  @override
  State<CardCheckbox> createState() => CardCheckboxState();
}

class CardCheckboxState extends State<CardCheckbox> {
  bool isActive = false;
  bool? isLike;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 12, right: 12),
      decoration: BoxDecoration(
        color: Color.fromRGBO(246, 248, 253, 1.0),
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        border: Border.fromBorderSide(
          BorderSide(color: Color.fromRGBO(19, 19, 30, 0.04), width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              widget.title,
              style: GoogleFonts.nunitoSans(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isActive = true;
                isLike = false;
              });
            },
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: Image.asset(
                isLike == false
                    ? 'assets/images/active-dislike.png'
                    : 'assets/images/dislike.png',
                key: ValueKey('dislike-$isLike'),
                width: 40,
                height: 40,
              ),
            ),
          ),
          SizedBox(width: 12),
          GestureDetector(
            onTap: () {
              setState(() {
                isActive = true;
                isLike = true;
              });
            },
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: Image.asset(
                isLike == true
                    ? 'assets/images/active-like.png'
                    : 'assets/images/like.png',
                key: ValueKey('like-$isLike'),
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
