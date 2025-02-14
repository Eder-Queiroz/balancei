enum TransactionTypeEnum {
  income(id: 1),
  expense(id: 2),
  balance(id: 3);

  final int id;

  const TransactionTypeEnum({required this.id});
}
