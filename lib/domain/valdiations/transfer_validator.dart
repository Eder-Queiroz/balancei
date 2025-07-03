import 'package:balancei_app/domain/dtos/transfer.dart';
import 'package:lucid_validation/lucid_validation.dart';

class TransferValidator extends LucidValidator<TransferDTO> {
  TransferValidator() {
    ruleFor((dto) => dto.title, key: 'title')
        .isNotNull(message: 'O título é obrigatório.')
        .notEmpty(message: 'O título é obrigatório.');

    ruleFor((dto) => dto.description, key: 'description')
        .isNotNull(message: 'A descrição é obrigatória.')
        .notEmpty(message: 'A descrição é obrigatória.');

    ruleFor((dto) => dto.amount, key: 'amount')
        .isNotNull(message: 'O valor é obrigatório.')
        .greaterThan(0, message: 'O valor deve ser maior que zero.');

    ruleFor((dto) => dto.date, key: 'date')
        .isNotNull(message: 'A data é obrigatória.');

    ruleFor((dto) => dto.type, key: 'type')
        .isNotNull(message: 'O tipo de transação é obrigatório.');

    ruleFor((dto) => dto.category, key: 'category')
        .isNotNull(message: 'A categoria é obrigatória.');
  }
}
