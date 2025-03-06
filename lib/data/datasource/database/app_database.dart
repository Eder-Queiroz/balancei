import 'package:balancei_app/data/datasource/dao/transaction_dao.dart';
import 'package:balancei_app/data/datasource/database/tables/transaction_categories_table.dart';
import 'package:balancei_app/data/datasource/database/tables/transactions_table.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

@DriftDatabase(
    tables: [Transactions, TransactionCategoriesTable], daos: [TransactionDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'balancei_app.db',
      native: const DriftNativeOptions(
        databaseDirectory: getApplicationSupportDirectory,
      ),
    );
  }
}
