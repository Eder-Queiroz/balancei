import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_category_entity.freezed.dart';
part 'transaction_category_entity.g.dart';

@freezed
class TransactionCategoryEntity with _$TransactionCategoryEntity {
  const factory TransactionCategoryEntity({
    required int id,
    required String description,
    required String icon,
    required int color,
  }) = _TransactionCategoryEntity;

  factory TransactionCategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$TransactionCategoryEntityFromJson(json);
}
