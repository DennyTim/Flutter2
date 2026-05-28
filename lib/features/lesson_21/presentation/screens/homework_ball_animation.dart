import 'dart:math';

import 'package:flutter/material.dart';

class HomeworkBallAnimation extends StatefulWidget {
  const HomeworkBallAnimation({super.key});

  @override
  HomeworkBallAnimationState createState() => HomeworkBallAnimationState();
}

class HomeworkBallAnimationState extends State<HomeworkBallAnimation>
    with SingleTickerProviderStateMixin {
  late final Animation<double> ballAnimation;
  late final Animation<double> rotationAnimation;
  late final AnimationController ballController;

  @override
  void initState() {
    super.initState();
    initAnimation();
  }

  void initAnimation() {
    ballController = AnimationController(
      duration: Duration(milliseconds: 3000),
      vsync: this,
    );

    ballAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween(
          begin: 240.0,
          end: 700.0,
        ).chain(CurveTween(curve: Curves.easeOut)),
        weight: 25.0,
      ),
      TweenSequenceItem(
        tween: Tween(
          begin: 700.0,
          end: 700.0,
        ).chain(CurveTween(curve: Curves.linear)),
        weight: 10.0,
      ),
      TweenSequenceItem(
        tween: Tween(
          begin: 700.0,
          end: 240.0,
        ).chain(CurveTween(curve: Curves.bounceOut)),
        weight: 65.0,
      ),
    ]).animate(ballController);

    rotationAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 2.0), weight: 25.0),
      TweenSequenceItem(tween: Tween(begin: 2.0, end: 2.5), weight: 10.0),
      TweenSequenceItem(tween: Tween(begin: 2.5, end: 5.0), weight: 65.0),
    ]).animate(ballController);
  }

  void onTap() {
    ballController.reset();
    ballController.forward();
  }

  @override
  void dispose() {
    ballController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Ball'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color(0xFF4DC8F0),
                        Color(0xFF87D9F5),
                        Color(0xFFD0EFFC),
                      ],
                      tileMode: TileMode.decal,
                    ),
                  ),
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color(0xFFC9EC9A),
                      Color(0xFF3EA03A),
                      Color(0xFF1A6B1A),
                    ],
                    tileMode: TileMode.decal,
                  ),
                ),
                width: double.infinity,
                height: 250,
              ),
            ],
          ),
          AnimatedBuilder(
            animation: ballAnimation,
            builder: (context, child) {
              return Positioned(
                bottom: ballAnimation.value,
                left: 0.0,
                right: 0.0,
                child: Transform.rotate(
                  angle: rotationAnimation.value * 2 * pi,
                  child: child,
                ),
              );
            },
            child: Center(
              child: GestureDetector(
                onTap: onTap,
                child: Image.asset(
                  'assets/images/lesson_21/ball.png',
                  width: 70,
                  height: 70,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
