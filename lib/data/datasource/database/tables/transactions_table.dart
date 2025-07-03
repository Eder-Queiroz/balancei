import 'package:balancei_app/data/datasource/database/tables/categories_table.dart';
import 'package:drift/drift.dart';

class Transactions extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  RealColumn get amount => real()();
  DateTimeColumn get date => dateTime()();
  TextColumn get type => text()();
  IntColumn get categoryId => integer().references(CategoriesTable, #id)();
  BoolColumn get isRecurring => boolean()();
  BoolColumn get isCompleted => boolean()();
  DateTimeColumn get recurrenceEndDate => dateTime().nullable()();
}
