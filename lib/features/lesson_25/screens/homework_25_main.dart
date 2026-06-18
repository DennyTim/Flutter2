import 'package:flutter/material.dart';
import 'package:flutter2/features/lesson_25/widgets/card_field.dart';

class Homework25Main extends StatelessWidget {
  const Homework25Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Робота з REST API, JSON'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 12),
            CardField(cardTitle: '1'),
            const SizedBox(height: 12),
            CardField(cardTitle: '2'),
            const SizedBox(height: 12),
            CardField(cardTitle: '3'),
            const SizedBox(height: 12),
            CardField(cardTitle: '4'),
          ],
        ),
      ),
    );
  }
}
