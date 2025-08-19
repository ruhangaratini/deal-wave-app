extension DateFormat on DateTime {
  String ddMMyyyy({bool showHour = false}) {
    final hhMMss = showHour ? '$hour:$minute:$second' : '';
    return '${day.toString().padLeft(2, '0')}/${month.toString().padLeft(2, '0')}/$year $hhMMss';
  }
}
