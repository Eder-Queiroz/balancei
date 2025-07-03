import 'package:balancei_app/domain/entities/category/category_entity.dart';
import 'package:balancei_app/domain/enums/transaction_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_entity.freezed.dart';
part 'transaction_entity.g.dart';

@freezed
sealed class TransactionEntity with _$TransactionEntity {
  const TransactionEntity._();
  const factory TransactionEntity({
    required int id,
    required String title,
    required String description,
    required double amount,
    required DateTime date,
    required TransactionTypeEnum type,
    required CategoryEntity category,
    required bool isRecurring,
    required bool isCompleted,
    DateTime? recurrenceEndDate,
  }) = _TransactionEntity;

  factory TransactionEntity.fromJson(Map<String, dynamic> json) =>
      _$TransactionEntityFromJson(json);

  bool get isIncome => type == TransactionTypeEnum.income;
}
