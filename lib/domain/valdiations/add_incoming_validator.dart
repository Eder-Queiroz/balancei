import 'package:balancei_app/domain/dtos/add_incoming.dart';
import 'package:lucid_validation/lucid_validation.dart';

class AddIncomingValidator extends LucidValidator<AddIncomingDTO> {
  AddIncomingValidator() {
    ruleFor((dto) => dto.value, key: 'value')
        .isNotNull(message: 'O valor é obrigatório.')
        .greaterThan(0, message: 'O valor deve ser maior que zero.');

    ruleFor((dto) => dto.description, key: 'description')
        .isNotNull(
          message: 'A descrição é obrigatória.',
        )
        .notEmpty(
          message: 'A descrição é obrigatória.',
        );
  }
}
