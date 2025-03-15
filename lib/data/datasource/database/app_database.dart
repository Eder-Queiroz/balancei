import 'package:balancei_app/data/datasource/dao/transaction_category_dao.dart';
import 'package:balancei_app/data/datasource/dao/transaction_dao.dart';
import 'package:balancei_app/data/datasource/database/tables/transaction_categories_table.dart';
import 'package:balancei_app/data/datasource/database/tables/transactions_table.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

final appDatabaseProvider = Provider<AppDatabase>((ref) {
  final database = AppDatabase();

  ref.onDispose(() {});

  return database;
});

@DriftDatabase(tables: [
  Transactions,
  TransactionCategoriesTable,
], daos: [
  TransactionDao,
  TransactionCategoryDao,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 2;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'balancei_app.db',
      native: const DriftNativeOptions(
        databaseDirectory: getApplicationSupportDirectory,
      ),
    );
  }

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(onCreate: (Migrator m) async {
      await m.createAll();
      await _populateCategories();
      await _populateTransactions();
    });
  }

  Future<void> _populateCategories() async {
    await batch((batch) {
      batch.insertAll(
        transactionCategoriesTable,
        [
          TransactionCategoriesTableCompanion.insert(
            description: 'Alimentação',
            icon: 0xe532,
            color: 0xFF813531,
          ),
          TransactionCategoriesTableCompanion.insert(
            description: 'Salário',
            icon: 0xe482,
            color: 0xFF64B06C,
          ),
        ],
      );
    });
  }

  Future<void> _populateTransactions() async {
    final now = DateTime.now();

    await batch((batch) {
      batch.insertAll(
        transactions,
        [
          TransactionsCompanion.insert(
            title: 'Mercado',
            description: 'Compra do mês',
            amount: 628.50,
            date: now.subtract(const Duration(days: 2)),
            type: 'expense',
            categoryId: 1,
            isRecurring: false,
            isCompleted: true,
            recurrenceEndDate: const Value.absent(),
          ),
          TransactionsCompanion.insert(
            title: 'Salário',
            description: 'Salário mensal',
            amount: 3000.00,
            date: now.subtract(const Duration(days: 5)),
            type: 'income',
            categoryId: 2,
            isRecurring: true,
            isCompleted: true,
            isIncoming: const Value(true),
            recurrenceEndDate: const Value.absent(),
          ),
        ],
      );
    });
  }
}
