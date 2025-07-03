import 'package:balancei_app/domain/entities/category/category_entity.dart';
import 'package:balancei_app/domain/enums/transaction_type_enum.dart';

const Object _sentinel = Object();

class TransferDTO {
  final String? title;
  final String? description;
  final double? amount;
  final DateTime? date;
  final TransactionTypeEnum? type;
  final CategoryEntity? category;
  final bool isRecurring;
  final bool isCompleted;
  final DateTime? recurrenceEndDate;

  const TransferDTO({
    this.title,
    this.description,
    this.amount,
    this.date,
    this.type,
    this.category,
    this.isRecurring = false,
    this.isCompleted = false,
    this.recurrenceEndDate,
  });

  TransferDTO copyWith({
    Object? title = _sentinel,
    Object? description = _sentinel,
    Object? amount = _sentinel,
    Object? date = _sentinel,
    Object? type = _sentinel,
    Object? category = _sentinel,
    bool? isRecurring,
    bool? isCompleted,
    Object? recurrenceEndDate = _sentinel,
  }) {
    return TransferDTO(
      title: title == _sentinel ? this.title : title as String?,
      description:
          description == _sentinel ? this.description : description as String?,
      amount: amount == _sentinel ? this.amount : amount as double?,
      date: date == _sentinel ? this.date : date as DateTime?,
      type: type == _sentinel ? this.type : type as TransactionTypeEnum?,
      category:
          category == _sentinel ? this.category : category as CategoryEntity?,
      isRecurring: isRecurring ?? this.isRecurring,
      isCompleted: isCompleted ?? this.isCompleted,
      recurrenceEndDate: recurrenceEndDate == _sentinel
          ? this.recurrenceEndDate
          : recurrenceEndDate as DateTime?,
    );
  }
}
