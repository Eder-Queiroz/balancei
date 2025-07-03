import 'package:balancei_app/data/datasource/database/app_database.dart';
import 'package:balancei_app/data/datasource/database/tables/categories_table.dart';
import 'package:balancei_app/data/datasource/database/tables/transactions_table.dart';
import 'package:balancei_app/data/mappers/transaction_mapper.dart';
import 'package:balancei_app/data/utils/exceptions/dao_exception.dart';
import 'package:balancei_app/domain/dtos/transfer.dart';
import 'package:balancei_app/domain/entities/date_filter/date_filter_entity.dart';
import 'package:balancei_app/domain/entities/transactions/transaction_entity.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:result_dart/result_dart.dart';

part 'transaction_dao.g.dart';

final transactionDaoProvider = Provider<TransactionDao>((ref) {
  final database = ref.read(appDatabaseProvider);
  return database.transactionDao;
});

@DriftAccessor(tables: [Transactions, CategoriesTable])
class TransactionDao extends DatabaseAccessor<AppDatabase>
    with _$TransactionDaoMixin {
  TransactionDao(super.db);

  AsyncResult<List<TransactionEntity>> getAllTransactions({
    DateFilterEntity? dateFilter,
  }) async {
    try {
      final query = select(transactions).join([
        innerJoin(
          categoriesTable,
          categoriesTable.id.equalsExp(transactions.categoryId),
        ),
        innerJoin(
          availableIconsTable,
          availableIconsTable.id.equalsExp(categoriesTable.iconId),
        ),
        innerJoin(
          availableColorsTable,
          availableColorsTable.id.equalsExp(categoriesTable.colorId),
        ),
      ]);

      if (dateFilter != null) {
        query
          ..where(transactions.date.isBiggerOrEqualValue(dateFilter.startDate))
          ..where(transactions.date.isSmallerOrEqualValue(dateFilter.endDate));
      }

      final result = await query.map((row) {
        return TransactionMapper.fromDatabase(
          transaction: row.readTable(transactions),
          category: row.readTable(categoriesTable),
          icon: row.readTable(availableIconsTable),
          color: row.readTable(availableColorsTable),
        );
      }).get();

      return Success(result);
    } catch (e, s) {
      return Failure(DaoException("[getAllTransactions] $e", s));
    }
  }

  AsyncResult<TransactionEntity> getTransactionById(int id) async {
    try {
      final query = select(transactions).join([
        innerJoin(
          categoriesTable,
          categoriesTable.id.equalsExp(transactions.categoryId),
        ),
        innerJoin(
          availableIconsTable,
          availableIconsTable.id.equalsExp(categoriesTable.iconId),
        ),
        innerJoin(
          availableColorsTable,
          availableColorsTable.id.equalsExp(categoriesTable.colorId),
        ),
      ])
        ..where(transactions.id.equals(id));

      final result = await query
          .map((row) => TransactionMapper.fromDatabase(
                transaction: row.readTable(transactions),
                category: row.readTable(categoriesTable),
                icon: row.readTable(availableIconsTable),
                color: row.readTable(availableColorsTable),
              ))
          .getSingle();

      return Success(result);
    } catch (e, s) {
      return Failure(DaoException("[getTransactionById] $e", s));
    }
  }

  AsyncResult<Unit> createTransaction(TransferDTO dto) async {
    try {
      await into(transactions).insert(TransactionMapper.toDatabase(dto));
      return Success(unit);
    } catch (e, s) {
      return Failure(DaoException("[createTransaction] $e", s));
    }
  }

  AsyncResult<Unit> updateTransaction(int id, TransferDTO dto) async {
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
