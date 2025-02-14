import 'package:balancei_app/domain/entities/transactions_category/transaction_category_entity.dart';
import 'package:balancei_app/domain/enum/transaction_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_entity.freezed.dart';
part 'transaction_entity.g.dart';

@freezed
class TransactionEntity with _$TransactionEntity {
  const factory TransactionEntity({
    required String id,
    required String title,
    required String description,
    required double amount,
    required DateTime date,
    required TransactionTypeEnum type,
    required TransactionCategoryEntity category,
    required bool isRecurring,
    required bool isCompleted,
    DateTime? recurrenceEndDate,
  }) = _TransactionEntity;

  factory TransactionEntity.fromJson(Map<String, dynamic> json) =>
      _$TransactionEntityFromJson(json);
}
