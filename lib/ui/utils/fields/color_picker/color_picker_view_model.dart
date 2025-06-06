import 'package:balancei_app/ui/utils/fields/color_picker/color_picker_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final colorPickerViewModelProvider =
    AutoDisposeNotifierProvider<ColorPickerViewModel, ColorPickerState>(
  ColorPickerViewModel.new,
);

class ColorPickerViewModel extends AutoDisposeNotifier<ColorPickerState> {
  @override
  ColorPickerState build() {
    return ColorPickerState();
  }

  set selectColor(int color) {
    if (state.selectedColor == color) {
      return;
    }

    state = state.copyWith(selectedColor: color);

    _removeColor(color);
    _addFirstColor(color);
  }

  void _removeColor(int color) {
    final colors = List<int>.from(state.colors);

    if (colors.contains(color)) {
      colors.remove(color);
      state = state.copyWith(colors: colors);
      return;
    }

    colors.removeLast();
    state = state.copyWith(colors: colors);
  }

  void _addFirstColor(int color) {
    final colors = List<int>.from(state.colors)..insert(0, color);
    state = state.copyWith(colors: colors);
  }
}
