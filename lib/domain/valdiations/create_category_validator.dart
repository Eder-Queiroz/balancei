import 'package:balancei_app/domain/dtos/create_category.dart';
import 'package:lucid_validation/lucid_validation.dart';

class CreateCategoryValidator extends LucidValidator<CreateCategoryDTO> {
  CreateCategoryValidator() {
    ruleFor((dto) => dto.description, key: 'description')
        .isNotNull(message: 'A descrição é obrigatório.')
        .notEmpty(message: 'A descrição é obrigatório.');

    ruleFor((dto) => dto.iconCodePoint, key: 'iconCodePoint')
        .isNotNull(message: 'O ícone é obrigatório.');

    ruleFor((dto) => dto.color, key: 'color')
        .isNotNull(message: 'A cor é obrigatória.');
  }
}
