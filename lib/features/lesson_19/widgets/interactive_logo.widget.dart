import 'package:flutter/material.dart';

class MainLogo extends StatelessWidget {
  MainLogo({required this.logoIndex, super.key});

  final int logoIndex;
  final List<String> imgList = [
    'default-mark.png',
    'worst-mark.png',
    'bad-mark.png',
    'avg-mark.png',
    'good-mark.png',
    'excellent-mark.png',
  ];

  Widget buildImg(BuildContext context, int index) {
    final img = switch (index) {
      final i when index == 1 => 'assets/images/lesson_19/${imgList[i]}',
      final i when index == 2 => 'assets/images/lesson_19/${imgList[i]}',
      final i when index == 3 => 'assets/images/lesson_19/${imgList[i]}',
      final i when index == 4 => 'assets/images/lesson_19/${imgList[i]}',
      final i when index == 5 => 'assets/images/lesson_19/${imgList[i]}',
      _ => 'assets/images/lesson_19/${imgList[0]}',
    };

    return GestureDetector(
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 200),
        transitionBuilder: (child, animation) {
          return ScaleTransition(scale: animation, child: child);
        },
        child: Image.asset(
          img,
          key: ValueKey('$index-$img'),
          width: 96,
          height: 124,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Center(child: buildImg(context, logoIndex)),
    );
  }
}
