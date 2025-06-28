class CreateCategoryDTO {
  final String? description;
  final int? color;
  final int? iconCodePoint;

  CreateCategoryDTO({
    required this.description,
    required this.color,
    required this.iconCodePoint,
  });

  CreateCategoryDTO copyWith({
    String? description,
    int? color,
    int? iconCodePoint,
  }) {
    return CreateCategoryDTO(
      description: description ?? this.description,
      color: color ?? this.color,
      iconCodePoint: iconCodePoint ?? this.iconCodePoint,
    );
  }
}
