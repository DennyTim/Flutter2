import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  const Stars({
    required this.starCount,
    required this.selectedRating,
    required this.onTapStars,
    super.key,
  });

  final int starCount;
  final int selectedRating;
  final void Function(int) onTapStars;

  Widget buildStar(BuildContext context, int index) {
    final img = index >= selectedRating
        ? 'assets/images/lesson_19/star-empty.png'
        : 'assets/images/lesson_19/star.png';

    return GestureDetector(
      onTap: () => onTapStars(index + 1),
      child: Row(
        children: [
          SizedBox(width: 10),
          AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            transitionBuilder: (child, animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: Image.asset(
              img,
              key: ValueKey('$index-$img'),
              width: 34,
              height: 32,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(
        starCount,
        (final index) => buildStar(context, index),
      ),
    );
  }
}
