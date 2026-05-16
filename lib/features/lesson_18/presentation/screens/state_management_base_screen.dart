import 'package:flutter/material.dart';
import 'package:flutter2/features/app/screens/home_screen.dart';
import 'package:flutter2/features/app/screens/page_names.dart';
import 'package:go_router/go_router.dart';

class StateManagementBaseScreen extends StatelessWidget {
  const StateManagementBaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management'),
        backgroundColor: Colors.green.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FeatureCard(
              title: 'BLoC Counter Example',
              onTap: () => context.goNamed(ScreenNames.blocCounterExample),
            ),
            FeatureCard(
              title: 'Cubit Counter Example',
              onTap: () => context.goNamed(ScreenNames.cubitCounterExample),
            ),
          ],
        ),
      ),
    );
  }
}
