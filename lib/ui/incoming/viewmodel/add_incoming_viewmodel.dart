import 'package:balancei_app/providers/categories_notifier.dart';
import 'package:balancei_app/ui/incoming/state/add_icoming_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addIncomingViewModelProvider =
    NotifierProvider.autoDispose<AddIncomingViewModel, AddIcomingState>(
  AddIncomingViewModel.new,
);

class AddIncomingViewModel extends AutoDisposeNotifier<AddIcomingState> {
  @override
  AddIcomingState build() {
    ref.listen(categoriesNotifierProvider, (previous, next) {
      next.whenData((categories) {
        if (categories.isNotEmpty && state.dto.categoryId == null) {
          category = categories.first.id;
        }
        state = state.copyWith(categories: next);
      });
    });

    return AddIcomingState();
  }

  Future<void> fetchCategories() async {
    ref.read(categoriesNotifierProvider.notifier).fetchCategories();
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
