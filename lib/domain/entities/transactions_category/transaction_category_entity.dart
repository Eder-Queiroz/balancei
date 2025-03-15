import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_category_entity.freezed.dart';
part 'transaction_category_entity.g.dart';

@freezed
class TransactionCategoryEntity with _$TransactionCategoryEntity {
  const TransactionCategoryEntity._();

  const factory TransactionCategoryEntity({
    required int id,
    required String description,
    required int icon,
    required int color,
  }) = _TransactionCategoryEntity;

  factory TransactionCategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$TransactionCategoryEntityFromJson(json);

  IconData get iconData => IconData(icon, fontFamily: 'MaterialIcons');
}
