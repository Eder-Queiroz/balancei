import 'package:balancei_app/data/datasource/database/app_database.dart';
import 'package:balancei_app/data/datasource/database/tables/available_colors_table.dart';
import 'package:balancei_app/data/utils/exceptions/dao_exception.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:result_dart/result_dart.dart';

part 'available_color_dao.g.dart';

final availableColorDaoProvider = Provider<AvailableColorDao>((ref) {
  final database = ref.read(appDatabaseProvider);
  return database.availableColorDao;
});

@DriftAccessor(tables: [AvailableColorsTable])
class AvailableColorDao extends DatabaseAccessor<AppDatabase>
    with _$AvailableColorDaoMixin {
  AvailableColorDao(super.db);

  AsyncResult<List<String>> getAllAvailableColors() async {
    try {
      final result = await select(availableColorsTable).get();
      return Success(result.map((color) => color.hexCode).toList());
    } catch (e, s) {
      return Failure(DaoException("[getAllAvailableColors] $e", s));
    }
  }
}
