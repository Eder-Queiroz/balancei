import 'package:balancei_app/data/datasource/dao/category_dao.dart';
import 'package:balancei_app/data/repository/category/category_repository.dart';
import 'package:balancei_app/domain/dtos/create_category.dart';
import 'package:balancei_app/domain/entities/category/category_entity.dart';
import 'package:balancei_app/domain/valdiations/create_category_validator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:result_dart/result_dart.dart';

final categoryRepositoryProvider = Provider<CategoryRepository>(
  (ref) => RemoteCategoryRepository(
    categoryDao: ref.watch(categoryDaoProvider),
  ),
);

class RemoteCategoryRepository implements CategoryRepository {
  final CategoryDao _categoryDao;

  RemoteCategoryRepository({
    required CategoryDao categoryDao,
  }) : _categoryDao = categoryDao;

  @override
  AsyncResult<List<CategoryEntity>> getCategories() {
    return _categoryDao.getAllCategories();
  }

  @override
  AsyncResult<Unit> addCategory(CreateCategoryDTO dto) async {
    final validator = CreateCategoryValidator();
    final validationResult = validator.validate(dto);

    if (!validationResult.isValid) {
      return Failure(
        Exception(
          'Validation failed: ${validationResult.exceptions.map((e) => e.message).join(', ')}',
        ),
      );
    }

    return _categoryDao.insertCategory(dto);
  }
}
