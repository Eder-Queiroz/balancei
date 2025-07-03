import 'package:balancei_app/data/datasource/dao/available_color_dao.dart';
import 'package:balancei_app/data/datasource/dao/available_icon_dao.dart';
import 'package:balancei_app/data/datasource/dao/category_dao.dart';
import 'package:balancei_app/data/datasource/dao/transaction_dao.dart';
import 'package:balancei_app/data/datasource/database/tables/available_colors_table.dart';
import 'package:balancei_app/data/datasource/database/tables/available_icons_table.dart';
import 'package:balancei_app/data/datasource/database/tables/categories_table.dart';
import 'package:balancei_app/data/datasource/database/tables/transactions_table.dart';
import 'package:balancei_app/data/utils/available_icons_table_helpers.dart';
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
  AvailableColorsTable,
  AvailableIconsTable,
  CategoriesTable,
], daos: [
  TransactionDao,
  AvailableColorDao,
  AvailableIconDao,
  CategoryDao,
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
      await _populateAvailableColors();
      await _populateAvailableIcons();
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
            recurrenceEndDate: const Value.absent(),
          ),
        ],
      );
    });
  }

  Future<void> _populateAvailableColors() async {
    await batch((batch) {
      batch.insertAll(
        availableColorsTable,
        [
          AvailableColorsTableCompanion.insert(hexCode: 'AF3DFF'),
          AvailableColorsTableCompanion.insert(hexCode: '2CC7E6'),
          AvailableColorsTableCompanion.insert(hexCode: 'FF3B94'),
          AvailableColorsTableCompanion.insert(hexCode: 'F7B500'),
          AvailableColorsTableCompanion.insert(hexCode: '00E676'),
          AvailableColorsTableCompanion.insert(hexCode: '00BFAE'),
          AvailableColorsTableCompanion.insert(hexCode: 'FF8345'),
          AvailableColorsTableCompanion.insert(hexCode: 'FF5555'),
          AvailableColorsTableCompanion.insert(hexCode: '23FFAA'),
          AvailableColorsTableCompanion.insert(hexCode: 'FFE158'),
          AvailableColorsTableCompanion.insert(hexCode: '8AFFC1'),
          AvailableColorsTableCompanion.insert(hexCode: '2DFFB8'),
          AvailableColorsTableCompanion.insert(hexCode: 'B388FF'),
          AvailableColorsTableCompanion.insert(hexCode: 'FFA7C2'),
          AvailableColorsTableCompanion.insert(hexCode: 'FFCC80'),
          AvailableColorsTableCompanion.insert(hexCode: 'AEEA00'),
          AvailableColorsTableCompanion.insert(hexCode: 'FFD600'),
          AvailableColorsTableCompanion.insert(hexCode: '7C4DFF'),
          AvailableColorsTableCompanion.insert(hexCode: '448AFF'),
          AvailableColorsTableCompanion.insert(hexCode: '69F0AE'),
        ],
      );
    });
  }

  Future<void> _populateAvailableIcons() async {
    await batch((batch) {
      batch.insertAll(
        availableIconsTable,
        [
          ...AvailableIconsTableHelpers.convertIconsToHexCodes().map((code) {
            return AvailableIconsTableCompanion.insert(iconCode: code);
          }),
        ],
      );
    });
  }

  Future<void> _populateCategories() async {
    await batch((batch) {
      batch.insertAll(
        categoriesTable,
        [
          CategoriesTableCompanion.insert(
            description: 'Alimentação',
            colorId: 2,
            iconId: 1,
          ),
          CategoriesTableCompanion.insert(
            description: 'Salário',
            colorId: 3,
            iconId: 2,
          ),
        ],
      );
    });
  }
}
