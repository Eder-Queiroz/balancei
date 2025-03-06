import 'package:balancei_app/data/datasource/database/app_database.dart';
import 'package:balancei_app/data/datasource/database/tables/transaction_categories_table.dart';
import 'package:balancei_app/data/datasource/database/tables/transactions_table.dart';
import 'package:balancei_app/data/mappers/transaction_mapper.dart';
import 'package:balancei_app/domain/entities/transactions/transaction_entity.dart';
import 'package:drift/drift.dart';
import 'package:result_dart/result_dart.dart';

part 'transaction_dao.g.dart';

@DriftAccessor(tables: [Transactions, TransactionCategoriesTable])
class TransactionDao extends DatabaseAccessor<AppDatabase>
    with _$TransactionDaoMixin {
  TransactionDao(super.db);

  AsyncResult<List<TransactionEntity>> getAllTransactions() async {
    final query = select(transactions).join([
      innerJoin(
        transactionCategoriesTable,
        transactionCategoriesTable.id.equalsExp(transactions.categoryId),
      ),
    ]);

    final result = await query.map((row) {
      return TransactionWithCategory(
        transaction: row.readTable(transactions),
        category: row.readTable(transactionCategoriesTable),
      );
    }).get();

    return Success(result.map(TransactionMapper.fromDatabase).toList());
  }
}

class TransactionWithCategory {
  final Transaction transaction;
  final TransactionCategoriesTableData category;

  TransactionWithCategory({
    required this.transaction,
    required this.category,
  });
}
