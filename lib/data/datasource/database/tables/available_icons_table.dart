import 'package:drift/drift.dart';

class AvailableIconsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get iconCode => text()();
}
