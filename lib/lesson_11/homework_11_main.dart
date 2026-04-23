import 'package:flutter/material.dart';
import 'package:flutter2/lesson_11/subtask_1_screen.dart';
import 'package:flutter2/lesson_11/subtask_2_screen.dart';
import 'package:flutter2/lesson_11/subtask_3_screen.dart';

class Homework11Main extends StatelessWidget {
  const Homework11Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NavigationCard(
              title: 'Subtask 1',
              description:
                  '- Subtask 1 \n'
                  '- Create container 300x150 \n'
                  '- Align container to the center \n'
                  '- Add background with borderRadius 16px \n',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<Widget>(
                  builder: (context) => const Subtask1Screen(),
                ),
              ),
            ),
            NavigationCard(
              title: 'Subtask 2',
              description:
                  '- Subtask 2 \n'
                  '- Text Settings: "color: white, size: 20, fw: bold" \n'
                  '- Add icons: "left icon ⭐, right icon ⭐" \n'
                  '- Alignment: \n'
                  '  --  "should be placed in bottom right" \n'
                  '  --  "10px indents between text and stars" \n'
                  '  --  "add 10px paddings around block" \n',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<Widget>(
                  builder: (context) => const Subtask2Screen(),
                ),
              ),
            ),
            NavigationCard(
              title: 'Subtask 3',
              description:
                  '- Subtask 3 \n'
                  '- Container should be in Column Widget \n'
                  '- Copy container two times (Summary: 3) \n'
                  '- Change color: 1st blue, 2nd green, 3d red \n',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<Widget>(
                  builder: (context) => const Subtask3Screen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationCard extends StatelessWidget {
  const NavigationCard({
    required this.title,
    required this.description,
    required this.onTap,
    super.key,
  });

  final String title;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade50, Colors.blue.shade100],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                description,
                style: const TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.arrow_forward, color: Colors.blue.shade700),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
