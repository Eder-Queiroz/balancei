import 'package:balancei_app/domain/enums/transaction_type_enum.dart';
import 'package:balancei_app/ui/transfer/texts/expense_text_strategy.dart';
import 'package:balancei_app/ui/transfer/texts/income_text_strategy.dart';

abstract class TransactionTextStrategy {
  String get screenTitle;
  String get titleLabel;
  String get titleHint;
  String get amountLabel;
  String get amountHint;
  String get isCompletedLabel;
  String get descriptionLabel;
  String get descriptionHint;
  String get isRecurringLabel;
  String get submitButtonText;
  String get errorMessage;

  static TransactionTextStrategy fromType(TransactionTypeEnum type) {
    switch (type) {
      case TransactionTypeEnum.income:
        return IncomeTextStrategy();
      case TransactionTypeEnum.expense:
        return ExpenseTextStrategy();
      default:
        return IncomeTextStrategy();
    }
  }
}
