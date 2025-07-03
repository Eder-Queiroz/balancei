import 'package:balancei_app/domain/entities/financial_summary_entity/financial_summary_entity.dart';
import 'package:balancei_app/domain/entities/transactions/transaction_entity.dart';

class FinancialSummaryMapper {
  static FinancialSummaryEntity fromTransactions(
      List<TransactionEntity> transactions) {
    final ({double totalIncome, double totalExpense}) result =
        transactions.fold(
      (totalIncome: 0.0, totalExpense: 0.0),
      (previousValue, element) {
        if (element.isIncome) {
          return (
            totalIncome: previousValue.totalIncome + element.amount,
            totalExpense: previousValue.totalExpense
          );
        } else {
          return (
            totalIncome: previousValue.totalIncome,
            totalExpense: previousValue.totalExpense + element.amount
          );
        }
      },
    );

    return FinancialSummaryEntity(
      transactions: transactions,
      totalIncome: result.totalIncome,
      totalExpense: result.totalExpense,
      totalBalance: result.totalIncome - result.totalExpense,
    );
  }
}
