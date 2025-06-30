import 'package:balancei_app/ui/utils/fields/picker/base_picker_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class BasePickerViewModel<T extends BasePickerModelState>
    extends AutoDisposeNotifier<T> {
  @override
  T build();

  void selectItem(int value) {
    if (isCurrentlySelected(value)) {
      return;
    }

    updateSelectedValue(value);
    removeValue(value);
    addFirstValue(value);
  }

  bool isCurrentlySelected(int value);

  void updateSelectedValue(int value);

  void removeValue(int value);

  void addFirstValue(int value);

  Future<void> fetchAvailableItems({
    Function(int value)? onStartedValue,
  });
}
