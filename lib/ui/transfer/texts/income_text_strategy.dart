import 'package:balancei_app/ui/transfer/texts/transaction_text_strategy.dart';

class IncomeTextStrategy extends TransactionTextStrategy {
  @override
  String get screenTitle => 'Nova Receita';

  @override
  String get titleLabel => 'Título';

  @override
  String get titleHint => 'Ex: Salário, Freelance, etc.';

  @override
  String get amountLabel => 'Valor da receita';

  @override
  String get amountHint => 'R\$ 0,00';

  @override
  String get isCompletedLabel => 'Recebido';

  @override
  String get descriptionLabel => 'Descrição';

  @override
  String get descriptionHint => 'Ex: Pagamento de freelance mensal';

  @override
  String get isRecurringLabel => 'Ganho recorrente';

  @override
  String get submitButtonText => 'Cadastrar';

  @override
  String get errorMessage => 'Erro ao cadastrar receita';
}
