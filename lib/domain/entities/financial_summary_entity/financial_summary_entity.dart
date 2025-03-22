import 'package:balancei_app/domain/entities/transactions/transaction_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'financial_summary_entity.freezed.dart';
part 'financial_summary_entity.g.dart';

@freezed
sealed class FinancialSummaryEntity with _$FinancialSummaryEntity {
  const factory FinancialSummaryEntity({
    required List<TransactionEntity> transactions,
    required double totalIncome,
    required double totalExpense,
    required double totalBalance,
  }) = _FinancialSummaryEntity;

  factory FinancialSummaryEntity.fromJson(Map<String, dynamic> json) =>
      _$FinancialSummaryEntityFromJson(json);
}
