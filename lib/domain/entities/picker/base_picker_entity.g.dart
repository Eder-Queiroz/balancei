// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_picker_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasePickerEntityImpl _$$BasePickerEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BasePickerEntityImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$BasePickerEntityImplToJson(
        _$BasePickerEntityImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
