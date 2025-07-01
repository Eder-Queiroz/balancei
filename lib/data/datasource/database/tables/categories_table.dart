import 'package:balancei_app/data/datasource/database/tables/available_colors_table.dart';
import 'package:balancei_app/data/datasource/database/tables/available_icons_table.dart';
import 'package:drift/drift.dart';

class CategoriesTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text()();
  IntColumn get iconId => integer().references(AvailableIconsTable, #id)();
  IntColumn get colorId => integer().references(AvailableColorsTable, #id)();
}
