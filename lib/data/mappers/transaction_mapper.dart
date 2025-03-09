import 'package:balancei_app/data/datasource/dao/transaction_dao.dart';
import 'package:balancei_app/data/datasource/database/app_database.dart';
import 'package:balancei_app/data/mappers/transaction_category_mapper.dart';
import 'package:balancei_app/domain/dtos/transfer.dart';
import 'package:balancei_app/domain/entities/transactions/transaction_entity.dart';
import 'package:balancei_app/domain/enums/transaction_type_enum.dart';
import 'package:drift/drift.dart';

class TransactionMapper {
  static TransactionEntity fromDatabase(TransactionWithCategory data) {
    final transaction = data.transaction;
    final category = data.category;
    return TransactionEntity(
      id: transaction.id,
      title: transaction.title,
      description: transaction.description,
      amount: transaction.amount,
      date: transaction.date,
      type: TransactionTypeEnum.fromKey(transaction.type),
      category: TransactionCategoryMapper.fromDatabase(category),
      isRecurring: transaction.isRecurring,
      isCompleted: transaction.isCompleted,
      recurrenceEndDate: transaction.recurrenceEndDate,
    );
  }

  static TransactionsCompanion toDatabase(Transfer entity) {
    return TransactionsCompanion.insert(
      title: entity.title,
      description: entity.description,
      amount: entity.amount,
      date: entity.date,
      type: entity.type.key,
      categoryId: entity.category.id,
      isRecurring: entity.isRecurring,
      isCompleted: entity.isCompleted,
      recurrenceEndDate: Value(entity.recurrenceEndDate),
    );
  }
}
