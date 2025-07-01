import 'package:balancei_app/data/datasource/database/app_database.dart';
import 'package:balancei_app/data/utils/extensions/hex_color_converter.dart';
import 'package:balancei_app/data/utils/extensions/icon_code_point_converter.dart';
import 'package:balancei_app/domain/entities/category/category_entity.dart';

class CategoryMapper {
  CategoryMapper._();

  static CategoryEntity fromDatabase({
    required CategoriesTableData category,
    required AvailableIconsTableData icon,
    required AvailableColorsTableData color,
  }) {
    return CategoryEntity(
      id: category.id,
      description: category.description,
      iconCodePoint: icon.iconCode.toIconCodePoint(),
      colorHex: color.hexCode.toHexColor(),
    );
  }
}
