import 'package:balancei_app/ui/transfer/texts/transaction_text_strategy.dart';

class ExpenseTextStrategy extends TransactionTextStrategy {
  @override
  String get screenTitle => 'Nova Despesa';

  @override
  String get titleLabel => 'Título';

  @override
  String get titleHint => 'Ex: Aluguel, Supermercado, etc.';

  @override
  String get amountLabel => 'Valor da despesa';

  @override
  String get amountHint => 'R\$ 0,00';

  @override
  String get isCompletedLabel => 'Pago';

  @override
  String get descriptionLabel => 'Descrição';

  @override
  String get descriptionHint => 'Ex: Compras do mês';

  @override
  String get isRecurringLabel => 'Gasto recorrente';

  @override
  String get submitButtonText => 'Cadastrar';

  @override
  String get errorMessage => 'Erro ao cadastrar despesa';
}
