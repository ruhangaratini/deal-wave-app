extension DateFormat on DateTime {
  String ddMMyyyy({bool showHour = false}) {
    final hhMMss = showHour
        ? '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}:${second.toString().padLeft(2, '0')}'
        : '';
    return '${day.toString().padLeft(2, '0')}/${month.toString().padLeft(2, '0')}/$year $hhMMss';
  }
}
