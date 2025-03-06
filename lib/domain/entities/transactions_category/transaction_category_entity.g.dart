// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_category_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionCategoryEntityImpl _$$TransactionCategoryEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionCategoryEntityImpl(
      id: (json['id'] as num).toInt(),
      description: json['description'] as String,
      icon: json['icon'] as String,
      color: (json['color'] as num).toInt(),
    );

Map<String, dynamic> _$$TransactionCategoryEntityImplToJson(
        _$TransactionCategoryEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'icon': instance.icon,
      'color': instance.color,
    };
