import 'package:drift/drift.dart';

class TransactionCategoriesTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text()();
  IntColumn get icon => integer()();
  IntColumn get color => integer()();
}
