// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryEntityImpl _$$CategoryEntityImplFromJson(Map<String, dynamic> json) =>
    _$CategoryEntityImpl(
      id: (json['id'] as num).toInt(),
      description: json['description'] as String,
      iconCodePoint: (json['iconCodePoint'] as num).toInt(),
      colorHex: (json['colorHex'] as num).toInt(),
    );

Map<String, dynamic> _$$CategoryEntityImplToJson(
        _$CategoryEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'iconCodePoint': instance.iconCodePoint,
      'colorHex': instance.colorHex,
    };
