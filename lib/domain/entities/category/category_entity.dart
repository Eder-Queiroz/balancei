import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_entity.freezed.dart';

@freezed
sealed class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    required int id,
    required String description,
    required int iconCodePoint,
    required int colorHex,
  }) = _CategoryEntity;
}
