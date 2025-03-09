import 'package:balancei_app/utils/exceptions/exception.dart';

enum TransactionTypeEnum {
  income(key: 'income'),
  expense(key: 'expense'),
  balance(key: 'balance');

  final String key;

  const TransactionTypeEnum({required this.key});

  static TransactionTypeEnum fromKey(String key) {
    return values.firstWhere((element) => element.key == key,
        orElse: () => throw InvalidTransactionType("Invalid transaction type"));
  }
}

class InvalidTransactionType extends AppException {
  InvalidTransactionType(super.message, [super.stackTrace]);
}
