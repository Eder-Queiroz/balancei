import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_picker_state.freezed.dart';

@freezed
class ColorPickerState with _$ColorPickerState {
  const factory ColorPickerState({
    @Default([
      0xffAF3DFF,
      0xff2CC7E6,
      0xffFF3B94,
    ])
    List<int> colors,
    @Default(0xffAF3DFF) int selectedColor,
  }) = _ColorPickerState;
}
