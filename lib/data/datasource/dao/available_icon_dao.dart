import 'package:balancei_app/data/datasource/database/app_database.dart';
import 'package:balancei_app/data/datasource/database/tables/available_icons_table.dart';
import 'package:balancei_app/data/utils/exceptions/dao_exception.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:result_dart/result_dart.dart';

part 'available_icon_dao.g.dart';

final availableIconDaoProvider = Provider<AvailableIconDao>((ref) {
  final database = ref.read(appDatabaseProvider);
  return database.availableIconDao;
});

@DriftAccessor(tables: [AvailableIconsTable])
class AvailableIconDao extends DatabaseAccessor<AppDatabase>
    with _$AvailableIconDaoMixin {
  AvailableIconDao(super.db);

  AsyncResult<List<AvailableIconsTableData>> getAllAvailableIcons() async {
    try {
      final result = await select(availableIconsTable).get();
      return Success(result);
    } catch (e, s) {
      return Failure(DaoException("[getAllAvailableIcons] $e", s));
    }
  }
}
