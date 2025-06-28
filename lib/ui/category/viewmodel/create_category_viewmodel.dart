import 'package:balancei_app/domain/dtos/create_category.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final createCategoryViewModelProvider =
    AutoDisposeNotifierProvider<CreateCategoryViewModel, CreateCategoryDTO>(
  CreateCategoryViewModel.new,
);

class CreateCategoryViewModel extends AutoDisposeNotifier<CreateCategoryDTO> {
  @override
  CreateCategoryDTO build() {
    return CreateCategoryDTO(
      description: '',
      iconCodePoint: null,
      color: null,
    );
  }

  set description(String value) {
    if (state.description == value) return;
    state = state.copyWith(description: value);
  }

  set iconCodePoint(int? value) {
    if (state.iconCodePoint == value) return;
    state = state.copyWith(iconCodePoint: value);
  }

  set color(int? value) {
    if (state.color == value) return;
    state = state.copyWith(color: value);
  }
}
