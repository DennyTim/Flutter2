import 'package:flutter2/lesson_12/models/property.model.dart';

class WidgetItem {
  final String id;
  final String type;
  final String? title;

  WidgetItem({required this.id, required this.type, this.title});
}

class StarsItem extends WidgetItem {
  final int starCount;
  final int rating;

  StarsItem({
    required super.id,
    required this.starCount,
    required this.rating
  }) : super(type: 'stars');
}

class CardItem extends WidgetItem {
  final List<PropertyModel> properties;

  CardItem({
    required super.id,
    required super.title,
    required this.properties
  }) : super(type: 'card');
}

class SectionItem extends WidgetItem {
  SectionItem({
    required super.id,
    required super.title
  }) : super(type: 'section');
}

class FooterItem extends WidgetItem {
  final String? placeholder;

  FooterItem({
    required super.id,
    required super.title,
    this.placeholder
  }) : super(type: 'footer');
}
