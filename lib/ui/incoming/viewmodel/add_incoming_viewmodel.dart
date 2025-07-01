import 'package:balancei_app/data/repository/category/category_repository.dart';
import 'package:balancei_app/data/repository/category/remote_category_repository.dart';
import 'package:balancei_app/ui/incoming/state/add_icoming_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addIncomingViewModelProvider =
    NotifierProvider.autoDispose<AddIncomingViewModel, AddIcomingState>(
  AddIncomingViewModel.new,
);

class AddIncomingViewModel extends AutoDisposeNotifier<AddIcomingState> {
  late final CategoryRepository _categoryRepository;
  @override
  AddIcomingState build() {
    _categoryRepository = ref.watch(categoryRepositoryProvider);
    return AddIcomingState();
  }

  Future<void> fetchCategories() async {
    state = state.copyWith(categories: const AsyncLoading());
    final result = await _categoryRepository.getCategories();
    result.fold(
      (categories) {
        category = categories.first.id;
        return state = state.copyWith(categories: AsyncData(categories));
      },
      (error) => state =
          state.copyWith(categories: AsyncError(error, StackTrace.current)),
    );
  }

  set value(double? value) {
    final updatedDto = state.dto.copyWith(value: value);
    state = state.copyWith(dto: updatedDto);
  }

  set received(bool? value) {
    final updatedDto = state.dto.copyWith(received: value);
    state = state.copyWith(dto: updatedDto);
  }

  set description(String? value) {
    final updatedDto = state.dto.copyWith(description: value);
    state = state.copyWith(dto: updatedDto);
  }

  set isRecurring(bool? value) {
    final updatedDto = state.dto.copyWith(isRecurring: value);
    state = state.copyWith(dto: updatedDto);
  }

  set repeat(bool? value) {
    final updatedDto = state.dto.copyWith(repeat: value);
    state = state.copyWith(dto: updatedDto);
  }

  set category(int? value) {
    final updatedDto = state.dto.copyWith(categoryId: value);
    state = state.copyWith(dto: updatedDto);
  }
}
