import 'package:intl/intl.dart';

final _dateFormat = DateFormat("dd/MM/yyyy");

final _money = NumberFormat.currency(
  locale: "pt_BR",
  symbol: "R\$",
);

formatMoney(double value) => _money.format(value);
formatDate(DateTime value) => _dateFormat.format(value);
