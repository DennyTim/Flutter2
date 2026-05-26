import 'package:flutter/material.dart';
import 'package:flutter2/features/app/screens/home_screen.dart';
import 'package:flutter2/features/app/screens/page_names.dart';
import 'package:go_router/go_router.dart';

class RateAppScreen extends StatelessWidget {
  const RateAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HW-19'),
        backgroundColor: Colors.green.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FeatureCard(
              title: 'HW-19. Rate screen',
              onTap: () => context.goNamed(ScreenNames.rateScreen),
            ),
          ],
        ),
      ),
    );
  }
}
