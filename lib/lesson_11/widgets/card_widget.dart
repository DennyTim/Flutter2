import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    required this.text,
    required this.textAlignment,
    required this.color,
    required this.colorKey,
    required this.flex,
    required this.getIconCb,
    required this.getBoxShadowCb,
    required this.getDynamicColorCb,
    required this.onTapDownCb,
    required this.onTapUpCb,
    super.key,
  });

  final String text;
  final MainAxisAlignment textAlignment;
  final Color color;
  final String colorKey;
  final int flex;
  final IconData Function(String key) getIconCb;
  final List<BoxShadow> Function(String key) getBoxShadowCb;
  final Color Function(String key) getDynamicColorCb;
  final void Function(String key, bool value) onTapDownCb;
  final void Function(String key, bool value) onTapUpCb;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: GestureDetector(
        onTapDown: (_) {
          onTapDownCb(colorKey, true);
        },
        onTapUp: (_) {
          onTapUpCb(colorKey, false);
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          margin: const EdgeInsets.only(top: 10.0),
          width: 300,
          height: 150,
          decoration: BoxDecoration(
            color: getDynamicColorCb(colorKey),
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            border: Border.fromBorderSide(BorderSide(color: color, width: 1)),
            boxShadow: getBoxShadowCb(colorKey),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: textAlignment,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: textAlignment,
                    children: [
                      Icon(getIconCb(colorKey), color: Colors.yellow),
                      SizedBox(width: 10),
                      Text(
                        text,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(getIconCb(colorKey), color: Colors.yellow),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
