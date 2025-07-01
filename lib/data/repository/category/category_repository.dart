import 'package:balancei_app/domain/entities/category/category_entity.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class CategoryRepository {
  AsyncResult<List<CategoryEntity>> getCategories();
}
