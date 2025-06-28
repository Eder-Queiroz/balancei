import 'package:balancei_app/ui/utils/fields/icon_picker/icon_picker_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final iconPickerViewModelProvider =
    AutoDisposeNotifierProvider<IconPickerViewModel, IconPickerState>(
  IconPickerViewModel.new,
);

class IconPickerViewModel extends AutoDisposeNotifier<IconPickerState> {
  @override
  IconPickerState build() {
    return IconPickerState();
  }

  set selectIcon(int icon) {
    if (state.selectedIcon == icon) {
      return;
    }

    state = state.copyWith(selectedIcon: icon);

    _removeIcon(icon);
    _addFirstIcon(icon);
  }

  void _removeIcon(int icon) {
    final icons = List<int>.from(state.icons);

    if (icons.contains(icon)) {
      icons.remove(icon);
      state = state.copyWith(icons: icons);
      return;
    }

    icons.removeLast();
    state = state.copyWith(icons: icons);
  }

  void _addFirstIcon(int icon) {
    final icons = List<int>.from(state.icons)..insert(0, icon);
    state = state.copyWith(icons: icons);
  }
}
