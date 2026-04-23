import 'package:flutter/material.dart';

class Subtask1Screen extends StatelessWidget {
  const Subtask1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subtask 1'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 150,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(9, 110, 234, 1.0),
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            border: Border.fromBorderSide(
              BorderSide(color: Colors.blue, width: 1),
            ),
          ),
          child: const Center(child: Text('Subtask 1')),
        ),
      ),
    );
  }
}
