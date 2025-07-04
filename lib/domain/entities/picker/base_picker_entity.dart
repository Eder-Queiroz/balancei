import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_picker_entity.freezed.dart';
part 'base_picker_entity.g.dart';

@freezed
sealed class BasePickerEntity with _$BasePickerEntity {
  const factory BasePickerEntity({
    required int id,
    required int value,
  }) = _BasePickerEntity;

  factory BasePickerEntity.fromJson(Map<String, dynamic> json) =>
      _$BasePickerEntityFromJson(json);
}
