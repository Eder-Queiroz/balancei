import 'package:balancei_app/domain/entities/transactions_category/transaction_category_entity.dart';
import 'package:balancei_app/domain/enum/transaction_type_enum.dart';

class Transfer {
  String title;
  String description;
  double amount;
  DateTime date;
  TransactionTypeEnum type;
  TransactionCategoryEntity category;
  bool isRecurring;
  bool isCompleted;
  DateTime? recurrenceEndDate;

  Transfer({
    required this.title,
    required this.description,
    required this.amount,
    required this.date,
    required this.type,
    required this.category,
    required this.isRecurring,
    required this.isCompleted,
    this.recurrenceEndDate,
  });
}
