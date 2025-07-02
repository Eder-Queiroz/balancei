import 'package:balancei_app/data/repository/category/category_repository.dart';
import 'package:balancei_app/data/repository/category/remote_category_repository.dart';
import 'package:balancei_app/domain/entities/category/category_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoriesNotifierProvider = AutoDisposeNotifierProvider<
    CategoriesNotifier, AsyncValue<List<CategoryEntity>>>(
  CategoriesNotifier.new,
);

class CategoriesNotifier
    extends AutoDisposeNotifier<AsyncValue<List<CategoryEntity>>> {
  late final CategoryRepository _categoryRepository;

  @override
  AsyncValue<List<CategoryEntity>> build() {
    _categoryRepository = ref.read(categoryRepositoryProvider);
    fetchCategories();
    return AsyncValue.loading();
  }

  Future<void> fetchCategories() async {
    state = AsyncValue.loading();
    final result = await _categoryRepository.getCategories();
    result.fold(
      (categories) => state = AsyncValue.data(categories),
      (error) => state = AsyncValue.error(error, StackTrace.current),
    );
  }
}
