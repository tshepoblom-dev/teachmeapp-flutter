import 'package:intl/intl.dart';

/// Formats ZAR amounts as "R 1,234.50" — display only. Never used to
/// recompute totals; the server's decimal math is always authoritative.
class MoneyFormatter {
  const MoneyFormatter._();

  static final _formatter = NumberFormat('#,##0.00', 'en_ZA');

  static String format(num amount) => 'R ${_formatter.format(amount)}';
}
