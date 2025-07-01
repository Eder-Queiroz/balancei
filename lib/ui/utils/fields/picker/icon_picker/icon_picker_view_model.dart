import 'package:balancei_app/data/repository/picker/picker_repository.dart';
import 'package:balancei_app/data/repository/picker/remote_picker_repository.dart';
import 'package:balancei_app/domain/entities/picker/base_picker_entity.dart';
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

    return BasePickerModelState();
  }

  @override
  bool isCurrentlySelected(BasePickerEntity value) {
    return state.selectedItem == value;
  }

  @override
  void updateSelectedValue(BasePickerEntity value) {
    state = state.copyWith(selectedItem: value);
  }

  @override
  void removeValue(BasePickerEntity value) {
    final items = List<BasePickerEntity>.from(state.lastItems);

    if (items.contains(value)) {
      items.remove(value);
      state = state.copyWith(lastItems: items);
      return;
    }

    items.removeLast();
    state = state.copyWith(lastItems: items);
  }

  @override
  void addFirstValue(BasePickerEntity value) {
    final items = List<BasePickerEntity>.from(state.lastItems)
      ..insert(0, value);
    state = state.copyWith(lastItems: items);
  }

  @override
  Future<void> fetchAvailableItems({
    Function(BasePickerEntity value)? onStartedValue,
  }) async {
    final result = await _pickerRepository.getAvailableIcons();
    state = result.fold(
      (success) {
        final startedValue = success.first;
        onStartedValue?.call(startedValue);
        return state.copyWith(
          items: AsyncData(success),
          selectedItem: startedValue,
          lastItems: success.sublist(0, 3),
        );
      },
      (failure) => state.copyWith(
        items: AsyncError(failure, StackTrace.current),
      ),
    );
  }
}
