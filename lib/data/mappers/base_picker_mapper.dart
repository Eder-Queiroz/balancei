import 'package:balancei_app/data/datasource/database/app_database.dart';
import 'package:balancei_app/data/utils/extensions/hex_color_converter.dart';
import 'package:balancei_app/data/utils/extensions/icon_code_point_converter.dart';
import 'package:balancei_app/domain/entities/picker/base_picker_entity.dart';

class BasePickerMapper {
  BasePickerMapper._();

  static BasePickerEntity fromColorsDatabase(AvailableColorsTableData colors) {
    return BasePickerEntity(
      id: colors.id,
      value: colors.hexCode.toHexColor(),
    );
  }

  static BasePickerEntity mapIcons(AvailableIconsTableData icons) {
    return BasePickerEntity(
      id: icons.id,
      value: icons.iconCode.toIconCodePoint(),
    );
  }
}
