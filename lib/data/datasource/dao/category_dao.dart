import 'package:balancei_app/data/datasource/database/app_database.dart';
import 'package:balancei_app/data/datasource/database/tables/categories_table.dart';
import 'package:balancei_app/data/mappers/category_mapper.dart';
import 'package:balancei_app/data/utils/exceptions/dao_exception.dart';
import 'package:balancei_app/domain/entities/category/category_entity.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:result_dart/result_dart.dart';

part 'category_dao.g.dart';

final categoryDaoProvider = Provider<CategoryDao>((ref) {
  final database = ref.read(appDatabaseProvider);
  return database.categoryDao;
});

@DriftAccessor(tables: [CategoriesTable])
class CategoryDao extends DatabaseAccessor<AppDatabase>
    with _$CategoryDaoMixin {
  CategoryDao(super.db);

  AsyncResult<List<CategoryEntity>> getAllCategories() async {
    try {
      final result = await select(categoriesTable).join([
        innerJoin(
          availableIconsTable,
          availableIconsTable.id.equalsExp(categoriesTable.iconId),
        ),
        innerJoin(
          availableColorsTable,
          availableColorsTable.id.equalsExp(categoriesTable.colorId),
        ),
      ]).get();

      final mappedCategories = result
          .map((row) => CategoryMapper.fromDatabase(
                category: row.readTable(categoriesTable),
                icon: row.readTable(availableIconsTable),
                color: row.readTable(availableColorsTable),
              ))
          .toList();

      return Success(mappedCategories);
    } catch (e, s) {
      return Failure(DaoException("[getAllCategories] $e", s));
    }
  }
}
