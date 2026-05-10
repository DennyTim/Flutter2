import 'package:flutter/material.dart';

class Subtask4Screen extends StatelessWidget {
  const Subtask4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subtask 4'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.only(top: 10.0),
                width: 300,
                height: 150,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(9, 110, 234, 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: Color.fromRGBO(9, 110, 234, 1.0),
                      width: 1,
                    ),
                  ),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
              margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
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
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
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
