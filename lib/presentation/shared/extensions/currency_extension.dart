import 'package:intl/intl.dart';

extension CurrencyExtension on double {
  String toCurrency() {
    return NumberFormat.simpleCurrency(locale: 'pt_BR').format(this);
  }
}
