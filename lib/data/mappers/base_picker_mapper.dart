import 'package:balancei_app/data/utils/extensions/hex_color_converter.dart';
import 'package:balancei_app/data/utils/extensions/icon_code_point_converter.dart';
import 'package:balancei_app/domain/entities/picker/base_picker_entity.dart';

class BasePickerMapper {
  BasePickerMapper._();

  static BasePickerEntity mapColors(List<String> colors) {
    final convertedColors = _convertColorsToInts(colors);
    return BasePickerEntity(
      items: convertedColors,
    );
  }

  static BasePickerEntity mapIcons(List<String> icons) {
    final convertedIcons = _convertIconsToInts(icons);
    return BasePickerEntity(
      items: convertedIcons,
    );
  }

  static List<int> _convertColorsToInts(List<String> colors) {
    return colors.map((color) => color.toHexColor()).toList();
  }

  static List<int> _convertIconsToInts(List<String> icons) {
    return icons.map((icon) => icon.toIconCodePoint()).toList();
  }
}
