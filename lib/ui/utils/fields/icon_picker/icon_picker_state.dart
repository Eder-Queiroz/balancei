import 'package:freezed_annotation/freezed_annotation.dart';

part 'icon_picker_state.freezed.dart';

@freezed
class IconPickerState with _$IconPickerState {
  const factory IconPickerState({
    @Default([
      0xef4c,
      0xef2c,
      0xe25a,
    ])
    List<int> icons,
    @Default(0xef4c) int selectedIcon,
  }) = _IconPickerState;
}
