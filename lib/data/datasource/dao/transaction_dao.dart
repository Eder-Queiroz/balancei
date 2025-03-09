import 'package:balancei_app/data/datasource/database/app_database.dart';
import 'package:balancei_app/data/datasource/database/tables/transaction_categories_table.dart';
import 'package:balancei_app/data/datasource/database/tables/transactions_table.dart';
import 'package:balancei_app/data/mappers/transaction_mapper.dart';
import 'package:balancei_app/data/utils/exceptions/dao_exception.dart';
import 'package:balancei_app/domain/dtos/transfer.dart';
import 'package:balancei_app/domain/entities/transactions/transaction_entity.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:result_dart/result_dart.dart';

part 'transaction_dao.g.dart';

final transactionDaoProvider = Provider<TransactionDao>((ref) {
  final database = ref.read(appDatabaseProvider);
  return database.transactionDao;
});

@DriftAccessor(tables: [Transactions, TransactionCategoriesTable])
class TransactionDao extends DatabaseAccessor<AppDatabase>
    with _$TransactionDaoMixin {
  TransactionDao(super.db);

  AsyncResult<List<TransactionEntity>> getAllTransactions() async {
    try {
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
    } catch (e, s) {
      return Failure(DaoException("[getAllTransactions] $e", s));
    }
  }

  AsyncResult<TransactionEntity> getTransactionById(int id) async {
    try {
      final query = select(transactions).join([
        innerJoin(
          transactionCategoriesTable,
          transactionCategoriesTable.id.equalsExp(transactions.categoryId),
        ),
      ])
        ..where(transactions.id.equals(id));

      final result = await query
          .map((row) => TransactionWithCategory(
                transaction: row.readTable(transactions),
                category: row.readTable(transactionCategoriesTable),
              ))
          .getSingle();

      return Success(TransactionMapper.fromDatabase(result));
    } catch (e, s) {
      return Failure(DaoException("[getTransactionById] $e", s));
    }
  }

  AsyncResult<Unit> createTransaction(Transfer dto) async {
    try {
      await into(transactions).insert(TransactionMapper.toDatabase(dto));
      return Success(unit);
    } catch (e, s) {
      return Failure(DaoException("[createTransaction] $e", s));
    }
  }

  AsyncResult<Unit> updateTransaction(int id, Transfer dto) async {
    try {
      await (update(transactions)
            ..where((transaction) => transaction.id.equals(id)))
          .write(TransactionMapper.toDatabase(dto));
      return Success(unit);
    } catch (e, s) {
      return Failure(DaoException("[updateTransaction] $e", s));
    }
  }

  AsyncResult<Unit> deleteTransaction(int id) async {
    try {
      await (delete(transactions)
            ..where((transaction) => transaction.id.equals(id)))
          .go();
      return Success(unit);
    } catch (e, s) {
      return Failure(DaoException("[deleteTransaction] $e", s));
    }
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
