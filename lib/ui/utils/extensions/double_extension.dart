import 'package:intl/intl.dart';

extension DoubleExtension on double {
  String toBRLCurrency() {
    return NumberFormat.currency(
      locale: 'pt_BR',
      symbol: 'R\$',
      decimalDigits: 2,
    ).format(this);
  }
}
