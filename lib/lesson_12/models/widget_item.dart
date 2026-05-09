import 'package:flutter2/lesson_12/models/property.model.dart';

class WidgetItem {
  WidgetItem({required this.id, required this.type, this.title});

  final String id;
  final String type;
  final String? title;
}

class StarsItem extends WidgetItem {
  StarsItem({required super.id, required this.starCount, required this.rating})
    : super(type: 'stars');

  final int starCount;
  final int rating;
}

class CardItem extends WidgetItem {
  CardItem({required super.id, required super.title, required this.properties})
    : super(type: 'card');

  final List<PropertyModel> properties;
}

class SectionItem extends WidgetItem {
  SectionItem({required super.id, required super.title})
    : super(type: 'section');
}

class FooterItem extends WidgetItem {
  FooterItem({required super.id, required super.title, this.placeholder})
    : super(type: 'footer');

  final String? placeholder;
}
