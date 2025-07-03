import 'package:balancei_app/data/datasource/database/app_database.dart';
import 'package:balancei_app/data/mappers/category_mapper.dart';
import 'package:balancei_app/domain/dtos/transfer.dart';
import 'package:balancei_app/domain/entities/transactions/transaction_entity.dart';
import 'package:balancei_app/domain/enums/transaction_type_enum.dart';
import 'package:drift/drift.dart';

class TransactionMapper {
  static TransactionEntity fromDatabase({
    required Transaction transaction,
    required CategoriesTableData category,
    required AvailableIconsTableData icon,
    required AvailableColorsTableData color,
  }) {
    return TransactionEntity(
      id: transaction.id,
      title: transaction.title,
      description: transaction.description,
      amount: transaction.amount,
      date: transaction.date,
      type: TransactionTypeEnum.fromKey(transaction.type),
      category: CategoryMapper.fromDatabase(
        category: category,
        icon: icon,
        color: color,
      ),
      isRecurring: transaction.isRecurring,
      isCompleted: transaction.isCompleted,
      recurrenceEndDate: transaction.recurrenceEndDate,
    );
  }

  static TransactionsCompanion toDatabase(TransferDTO entity) {
    return TransactionsCompanion(
      title: Value(entity.title!),
      description: Value(entity.description!),
      amount: Value(entity.amount!),
      date: Value(entity.date!),
      type: Value(entity.type!.key),
      categoryId: Value(entity.category!.id),
      isRecurring: Value(entity.isRecurring),
      isCompleted: Value(entity.isCompleted),
      recurrenceEndDate: Value(entity.recurrenceEndDate),
    );
  }
}
