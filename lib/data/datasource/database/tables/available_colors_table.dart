import 'package:drift/drift.dart';

class AvailableColorsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get hexCode => text()();
}
