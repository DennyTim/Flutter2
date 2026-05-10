import 'package:flutter/material.dart';

class DynamicCard extends StatefulWidget {
  const DynamicCard({
    required this.width,
    required this.buttonColor,
    required this.mainAxisAlignment,
    this.height,
    super.key,
  });

  final double width;
  final double? height;
  final Color buttonColor;
  final MainAxisAlignment mainAxisAlignment;

  @override
  State<DynamicCard> createState() => _DynamicCardState();
}

class _DynamicCardState extends State<DynamicCard> {
  bool _isSelected = false;

  void _changeColor(_) => setState(() => _isSelected = !_isSelected);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _changeColor,
      onTapUp: _changeColor,
      child: AnimatedContainer(
        width: widget.width,
        height: widget.height,
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: Color.alphaBlend(
            _isSelected ? Colors.black12 : Colors.transparent,
            widget.buttonColor,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: _isSelected
              ? [
                  const BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ]
              : null,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: widget.mainAxisAlignment,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: widget.mainAxisAlignment,
                  children: [
                    Icon(
                      _isSelected ? Icons.star : Icons.star_border,
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
                      _isSelected ? Icons.star : Icons.star_border,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
