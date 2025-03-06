import 'package:drift/drift.dart';

class TransactionCategoriesTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text()();
  TextColumn get icon => text()();
  IntColumn get color => integer()();
}
