import 'package:flutter/material.dart';

class Subtask3Screen extends StatelessWidget {
  const Subtask3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subtask 3'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 150,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(9, 110, 234, 1.0),
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                border: Border.fromBorderSide(
                  BorderSide(color: Color.fromRGBO(9, 110, 234, 1.0), width: 1),
                ),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 10),
                          Text(
                            'Привіт, Flutter!',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.star, color: Colors.yellow),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              width: 300,
              height: 150,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(8, 233, 0, 1.0),
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                border: Border.fromBorderSide(
                  BorderSide(color: Color.fromRGBO(8, 233, 0, 1.0), width: 1),
                ),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 10),
                          Text(
                            'Привіт, Flutter!',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.star, color: Colors.yellow),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              width: 300,
              height: 150,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(234, 9, 12, 1.0),
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                border: Border.fromBorderSide(
                  BorderSide(color: Color.fromRGBO(234, 9, 12, 1.0), width: 1),
                ),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 10),
                          Text(
                            'Привіт, Flutter!',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.star, color: Colors.yellow),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
