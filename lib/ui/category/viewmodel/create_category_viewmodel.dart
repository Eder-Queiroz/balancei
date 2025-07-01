import 'package:balancei_app/data/repository/category/category_repository.dart';
import 'package:balancei_app/data/repository/category/remote_category_repository.dart';
import 'package:balancei_app/domain/dtos/create_category.dart';
import 'package:balancei_app/domain/entities/picker/base_picker_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:result_dart/result_dart.dart';

final createCategoryViewModelProvider =
    AutoDisposeNotifierProvider<CreateCategoryViewModel, CreateCategoryDTO>(
  CreateCategoryViewModel.new,
);

class CreateCategoryViewModel extends AutoDisposeNotifier<CreateCategoryDTO> {
  late final CategoryRepository _categoryRepository;

  @override
  CreateCategoryDTO build() {
    _categoryRepository = ref.read(categoryRepositoryProvider);
    return CreateCategoryDTO(
      description: '',
      icon: null,
      color: null,
    );
  }

  AsyncResult<Unit> createCategory() async {
    return _categoryRepository.addCategory(state);
  }

  set description(String value) {
    if (state.description == value) return;
    state = state.copyWith(description: value);
  }

  set icon(BasePickerEntity? value) {
    if (state.icon == value) return;
    state = state.copyWith(icon: value);
  }

  set color(BasePickerEntity? value) {
    if (state.color == value) return;
    state = state.copyWith(color: value);
  }
}
