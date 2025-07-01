import 'package:balancei_app/domain/entities/picker/base_picker_entity.dart';
import 'package:balancei_app/ui/utils/fields/picker/base_picker_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class BasePickerViewModel<T extends BasePickerModelState>
    extends AutoDisposeNotifier<T> {
  @override
  T build();

  void selectItem(BasePickerEntity value) {
    if (isCurrentlySelected(value)) {
      return;
    }

    updateSelectedValue(value);
    removeValue(value);
    addFirstValue(value);
  }

  bool isCurrentlySelected(BasePickerEntity value);

  void updateSelectedValue(BasePickerEntity value);

  void removeValue(BasePickerEntity value);

  void addFirstValue(BasePickerEntity value);

  Future<void> fetchAvailableItems({
    Function(BasePickerEntity value)? onStartedValue,
  });
}
