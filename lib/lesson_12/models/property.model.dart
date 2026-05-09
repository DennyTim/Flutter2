class PropertyModel {
  PropertyModel({
    required this.id,
    required this.title,
    required this.type,
    this.isLike,
    this.isActive,
  });

  final String id;
  final String title;
  final String type;
  final bool? isLike;
  final bool? isActive;
}
