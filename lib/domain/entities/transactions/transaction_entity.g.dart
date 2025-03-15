// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionEntityImpl _$$TransactionEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionEntityImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      amount: (json['amount'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      type: $enumDecode(_$TransactionTypeEnumEnumMap, json['type']),
      category: TransactionCategoryEntity.fromJson(
          json['category'] as Map<String, dynamic>),
      isRecurring: json['isRecurring'] as bool,
      isCompleted: json['isCompleted'] as bool,
      isIncoming: json['isIncoming'] as bool? ?? false,
      recurrenceEndDate: json['recurrenceEndDate'] == null
          ? null
          : DateTime.parse(json['recurrenceEndDate'] as String),
    );

Map<String, dynamic> _$$TransactionEntityImplToJson(
        _$TransactionEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
      'type': _$TransactionTypeEnumEnumMap[instance.type]!,
      'category': instance.category,
      'isRecurring': instance.isRecurring,
      'isCompleted': instance.isCompleted,
      'isIncoming': instance.isIncoming,
      'recurrenceEndDate': instance.recurrenceEndDate?.toIso8601String(),
    };

const _$TransactionTypeEnumEnumMap = {
  TransactionTypeEnum.income: 'income',
  TransactionTypeEnum.expense: 'expense',
  TransactionTypeEnum.balance: 'balance',
};
