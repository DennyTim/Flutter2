import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Stars extends StatefulWidget {
  const Stars({required this.starCount, required this.rating, super.key});

  final int starCount;
  final int rating;

  @override
  State<Stars> createState() => StarsState();
}

class StarsState extends State<Stars> {
  int selectedRating = 0;

  @override
  void initState() {
    super.initState();

    selectedRating = widget.rating;
  }

  Widget buildStar(BuildContext context, int index) {
    final icon = index >= selectedRating
        ? 'assets/images/star_empty.svg'
        : 'assets/images/star.svg';

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedRating = index + 1;
        });
      },
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        transitionBuilder: (child, animation) {
          return ScaleTransition(scale: animation, child: child);
        },
        child: SvgPicture.asset(
          icon,
          key: ValueKey('$index-$icon'),
          width: 48,
          height: 48,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.06),
            offset: Offset(0, 1),
            blurRadius: 0,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          widget.starCount,
          (final index) => buildStar(context, index),
        ),
      ),
    );
  }
}
