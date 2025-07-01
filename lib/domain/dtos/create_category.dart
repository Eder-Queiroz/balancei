import 'package:balancei_app/domain/entities/picker/base_picker_entity.dart';

class CreateCategoryDTO {
  final String? description;
  final BasePickerEntity? color;
  final BasePickerEntity? icon;

  CreateCategoryDTO({
    required this.description,
    required this.color,
    required this.icon,
  });

  CreateCategoryDTO copyWith({
    String? description,
    BasePickerEntity? color,
    BasePickerEntity? icon,
  }) {
    return CreateCategoryDTO(
      description: description ?? this.description,
      color: color ?? this.color,
      icon: icon ?? this.icon,
    );
  }
}
