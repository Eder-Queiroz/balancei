import 'package:balancei_app/data/datasource/database/app_database.dart';
import 'package:balancei_app/domain/entities/transactions_category/transaction_category_entity.dart';

class TransactionCategoryMapper {
  static TransactionCategoryEntity fromDatabase(
      TransactionCategoriesTableData transactionCategory) {
    return TransactionCategoryEntity(
      id: transactionCategory.id,
      description: transactionCategory.description,
      icon: transactionCategory.icon,
      color: transactionCategory.color,
    );
  }

  static TransactionCategoriesTableCompanion toDatabase(
      TransactionCategoryEntity entity) {
    return TransactionCategoriesTableCompanion.insert(
      description: entity.description,
      icon: entity.icon,
      color: entity.color,
    );
  }
}
