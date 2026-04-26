import 'package:flutter/material.dart';

import '../widgets/dynamic_card.widget.dart';

class Subtask5Screen extends StatelessWidget {
  const Subtask5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subtask 5'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 8),
            Expanded(
              flex: 3,
              child: DynamicCard(
                width: 300,
                height: 150,
                buttonColor: Color.fromRGBO(9, 110, 234, 1.0),
                mainAxisAlignment: MainAxisAlignment.start,
              ),
            ),
            SizedBox(height: 8),
            DynamicCard(
              width: 300,
              height: 150,
              buttonColor: Color.fromRGBO(8, 233, 0, 1.0),
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            SizedBox(height: 8),
            DynamicCard(
              width: 300,
              height: 150,
              buttonColor: Color.fromRGBO(234, 9, 12, 1.0),
              mainAxisAlignment: MainAxisAlignment.end,
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
