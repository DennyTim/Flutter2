import 'package:flutter/material.dart';

import '../models/property.model.dart';
import 'card-checkbox.widget.dart';
import 'card-text.widget.dart';
import 'card-title.widget.dart';

class MarkCard extends StatelessWidget {
  const MarkCard({
    required this.cardTitle,
    required this.propertyLists,
    super.key,
  });

  final String cardTitle;
  final List<PropertyModel> propertyLists;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(24.0)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.06),
            offset: Offset(0, 1),
            blurRadius: 0,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CardTitle(title: cardTitle),
          ...propertyLists.map((PropertyModel property) {
            return switch (property) {
              final p when p.type == 'checkbox' => CardCheckbox(
                title: property.title,
              ),
              final p when p.type == 'text' => CardText(
                placeholder: property.title,
              ),

              _ => Text('unknown property'),
            };
          }),
        ],
      ),
    );
  }
}
