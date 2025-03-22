// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financial_summary_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinancialSummaryEntityImpl _$$FinancialSummaryEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$FinancialSummaryEntityImpl(
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => TransactionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalIncome: (json['totalIncome'] as num).toDouble(),
      totalExpense: (json['totalExpense'] as num).toDouble(),
      totalBalance: (json['totalBalance'] as num).toDouble(),
    );

Map<String, dynamic> _$$FinancialSummaryEntityImplToJson(
        _$FinancialSummaryEntityImpl instance) =>
    <String, dynamic>{
      'transactions': instance.transactions,
      'totalIncome': instance.totalIncome,
      'totalExpense': instance.totalExpense,
      'totalBalance': instance.totalBalance,
    };
