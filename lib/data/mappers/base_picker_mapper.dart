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

  static String _normalizeColorString(String color) {
    return "ff$color".toLowerCase();
  }

  static List<int> _convertColorsToInts(List<String> colors) {
    return colors
        .map((color) => int.parse(_normalizeColorString(color), radix: 16))
        .toList();
  }

  static List<int> _convertIconsToInts(List<String> icons) {
    return icons.map((icon) => int.parse(icon, radix: 16)).toList();
  }
}
