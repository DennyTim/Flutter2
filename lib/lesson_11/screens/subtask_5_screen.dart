import 'package:flutter/material.dart';
import 'package:flutter2/lesson_11/widgets/card_widget.dart';

class Subtask5Screen extends StatefulWidget {
  const Subtask5Screen({super.key});

  @override
  State<Subtask5Screen> createState() => _Subtask5ScreenState();
}

class _Subtask5ScreenState extends State<Subtask5Screen> {
  Map<String, bool> _btnPress = {};
  BoxShadow customShdw = BoxShadow(
    color: Colors.grey.withValues(alpha: 1),
    blurRadius: 20.0,
    spreadRadius: 0.0,
    offset: Offset(5.0, 5.0),
  );

  @override
  void initState() {
    super.initState();
    _btnPress = {};
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _triggerColor(String key, bool value) {
    setState(() {
      _btnPress = {..._btnPress, key: value};
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
            CardItem(
              text: 'Привіт, Flutter!',
              textAlignment: MainAxisAlignment.start,
              color: Color.fromRGBO(9, 110, 234, 1.0),
              colorKey: 'blue',
              flex: 3,
              getIconCb: (key) =>
                  _btnPress[key] == true ? Icons.star_border : Icons.star,
              getBoxShadowCb: (key) =>
                  _btnPress[key] == true ? [customShdw] : [],
              getDynamicColorCb: (key) => _btnPress[key] == true
                  ? Color.fromRGBO(9, 110, 234, 0.5)
                  : Color.fromRGBO(9, 110, 234, 1.0),
              onTapDownCb: (key, value) => _triggerColor(key, value),
              onTapUpCb: (key, value) => _triggerColor(key, value),
            ),
            CardItem(
              text: 'Привіт, Flutter!',
              textAlignment: MainAxisAlignment.center,
              color: Color.fromRGBO(8, 233, 0, 1.0),
              colorKey: 'green',
              flex: 1,
              getIconCb: (key) =>
                  _btnPress[key] == true ? Icons.star_border : Icons.star,
              getBoxShadowCb: (key) =>
                  _btnPress[key] == true ? [customShdw] : [],
              getDynamicColorCb: (key) => _btnPress[key] == true
                  ? Color.fromRGBO(8, 233, 0, 0.5)
                  : Color.fromRGBO(8, 233, 0, 1.0),
              onTapDownCb: (key, value) => _triggerColor(key, value),
              onTapUpCb: (key, value) => _triggerColor(key, value),
            ),
            CardItem(
              text: 'Привіт, Flutter!',
              textAlignment: MainAxisAlignment.end,
              color: Color.fromRGBO(234, 9, 12, 1.0),
              colorKey: 'red',
              flex: 1,
              getIconCb: (key) =>
                  _btnPress[key] == true ? Icons.star_border : Icons.star,
              getBoxShadowCb: (key) =>
                  _btnPress[key] == true ? [customShdw] : [],
              getDynamicColorCb: (key) => _btnPress[key] == true
                  ? Color.fromRGBO(234, 9, 12, 0.5)
                  : Color.fromRGBO(234, 9, 12, 1.0),
              onTapDownCb: (key, value) => _triggerColor(key, value),
              onTapUpCb: (key, value) => _triggerColor(key, value),
            ),
          ],
        ),
      ),
    );
  }
}
