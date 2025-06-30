import 'package:balancei_app/data/repository/picker/picker_repository.dart';
import 'package:balancei_app/data/repository/picker/remote_picker_repository.dart';
import 'package:balancei_app/ui/utils/fields/picker/base_picker_state.dart';
import 'package:balancei_app/ui/utils/fields/picker/base_picker_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final iconPickerViewModelProvider =
    AutoDisposeNotifierProvider<IconPickerViewModel, BasePickerModelState>(
  IconPickerViewModel.new,
);

class IconPickerViewModel extends BasePickerViewModel {
  late final PickerRepository _pickerRepository;

  @override
  BasePickerModelState build() {
    _pickerRepository = ref.read(pickerRepositoryProvider);

    return BasePickerModelState(
      availableItems: AsyncLoading(),
      selectedItem: 0,
    );
  }

  @override
  bool isCurrentlySelected(int value) {
    return state.selectedItem == value;
  }

  @override
  void updateSelectedValue(int value) {
    state = state.copyWith(selectedItem: value);
  }

  @override
  void removeValue(int value) {
    final items = List<int>.from(state.lastItems);

    if (items.contains(value)) {
      items.remove(value);
      state = state.copyWith(lastItems: items);
      return;
    }

    items.removeLast();
    state = state.copyWith(lastItems: items);
  }

  @override
  void addFirstValue(int value) {
    final items = List<int>.from(state.lastItems)..insert(0, value);
    state = state.copyWith(lastItems: items);
  }

  @override
  Future<void> fetchAvailableItems({
    Function(int value)? onStartedValue,
  }) async {
    final result = await _pickerRepository.getAvailableIcons();
    state = result.fold(
      (success) {
        final startedValue = success.items.first;
        onStartedValue?.call(startedValue);
        return state.copyWith(
          items: AsyncData(success.items),
          selectedItem: startedValue,
          lastItems: success.items.sublist(0, 3),
        );
      },
      (failure) => state.copyWith(
        items: AsyncError(failure, StackTrace.current),
      ),
    );
  }
}
