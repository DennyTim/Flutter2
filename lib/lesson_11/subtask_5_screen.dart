import 'package:flutter/material.dart';

class Subtask5Screen extends StatefulWidget {
  const Subtask5Screen({super.key});

  @override
  State<Subtask5Screen> createState() => _Subtask5ScreenState();
}

class _Subtask5ScreenState extends State<Subtask5Screen> {
  Map<String, bool> _buttonPressed = {};

  @override
  void initState() {
    super.initState();
    _buttonPressed = {};
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _triggerColor(String key, bool value) {
    setState(() {
      _buttonPressed = {..._buttonPressed, key: value};
    });
  }

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
            Expanded(
              flex: 3,
              child: GestureDetector(
                onTapDown: (_) {
                  _triggerColor('blue', true);
                },
                onTapUp: (_) {
                  _triggerColor('blue', false);
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  margin: const EdgeInsets.only(top: 10.0),
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                    color: _buttonPressed['blue'] == true
                        ? Color.fromRGBO(9, 110, 234, 0.5)
                        : Color.fromRGBO(9, 110, 234, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: Color.fromRGBO(9, 110, 234, 1.0),
                        width: 1,
                      ),
                    ),
                    boxShadow: _buttonPressed['blue'] == true
                        ? [
                            BoxShadow(
                              color: Colors.grey.withValues(alpha: 1),
                              blurRadius: 20.0, // soften the shadow
                              spreadRadius: 0.0, //extend the shadow
                              offset: Offset(
                                5.0, // Move to right 10  horizontally
                                5.0, // Move to bottom 10 Vertically
                              ),
                            ),
                          ]
                        : [],
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                _buttonPressed['blue'] == true
                                    ? Icons.star_border
                                    : Icons.star,
                                color: Colors.yellow,
                              ),
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
                              Icon(
                                _buttonPressed['blue'] == true
                                    ? Icons.star_border
                                    : Icons.star,
                                color: Colors.yellow,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTapDown: (_) {
                  _triggerColor('green', true);
                },
                onTapUp: (_) {
                  _triggerColor('green', false);
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  margin: const EdgeInsets.only(top: 10.0),
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                    color: _buttonPressed['green'] == true
                        ? Color.fromRGBO(8, 233, 0, 0.5)
                        : Color.fromRGBO(8, 233, 0, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: Color.fromRGBO(8, 233, 0, 1.0),
                        width: 1,
                      ),
                    ),
                    boxShadow: _buttonPressed['green'] == true
                        ? [
                            BoxShadow(
                              color: Colors.grey.withValues(alpha: 1),
                              blurRadius: 20.0, // soften the shadow
                              spreadRadius: 0.0, //extend the shadow
                              offset: Offset(
                                5.0, // Move to right 10  horizontally
                                5.0, // Move to bottom 10 Vertically
                              ),
                            ),
                          ]
                        : [],
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                _buttonPressed['green'] == true
                                    ? Icons.star_border
                                    : Icons.star,
                                color: Colors.yellow,
                              ),
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
                              Icon(
                                _buttonPressed['green'] == true
                                    ? Icons.star_border
                                    : Icons.star,
                                color: Colors.yellow,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTapDown: (_) {
                  _triggerColor('red', true);
                },
                onTapUp: (_) {
                  _triggerColor('red', false);
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                    color: _buttonPressed['red'] == true
                        ? Color.fromRGBO(234, 9, 12, 0.5)
                        : Color.fromRGBO(234, 9, 12, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: Color.fromRGBO(234, 9, 12, 1.0),
                        width: 1,
                      ),
                    ),
                    boxShadow: _buttonPressed['red'] == true
                        ? [
                            BoxShadow(
                              color: Colors.grey.withValues(alpha: 1),
                              blurRadius: 20.0, // soften the shadow
                              spreadRadius: 0.0, //extend the shadow
                              offset: Offset(
                                5.0, // Move to right 10  horizontally
                                5.0, // Move to bottom 10 Vertically
                              ),
                            ),
                          ]
                        : [],
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                _buttonPressed['red'] == true
                                    ? Icons.star_border
                                    : Icons.star,
                                color: Colors.yellow,
                              ),
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
                              Icon(
                                _buttonPressed['red'] == true
                                    ? Icons.star_border
                                    : Icons.star,
                                color: Colors.yellow,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
