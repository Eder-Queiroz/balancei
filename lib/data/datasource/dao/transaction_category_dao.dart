import 'package:balancei_app/data/datasource/database/app_database.dart';
import 'package:balancei_app/data/datasource/database/tables/transaction_categories_table.dart';
import 'package:balancei_app/data/mappers/transaction_category_mapper.dart';
import 'package:balancei_app/data/utils/exceptions/dao_exception.dart';
import 'package:balancei_app/domain/entities/transactions_category/transaction_category_entity.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:result_dart/result_dart.dart';

part 'transaction_category_dao.g.dart';

final transactionCategoryDaoProvider = Provider<TransactionCategoryDao>((ref) {
  final database = ref.read(appDatabaseProvider);
  return database.transactionCategoryDao;
});

@DriftAccessor(tables: [TransactionCategoriesTable])
class TransactionCategoryDao extends DatabaseAccessor<AppDatabase>
    with _$TransactionCategoryDaoMixin {
  TransactionCategoryDao(super.db);

  AsyncResult<List<TransactionCategoryEntity>>
      getAllTransactionCategories() async {
    try {
      final result = await select(transactionCategoriesTable).get();
      return Success(
          result.map(TransactionCategoryMapper.fromDatabase).toList());
    } catch (e, s) {
      return Failure(DaoException("[getAllTransactionCategories] $e", s));
    }
  }
}
