import 'package:intl/intl.dart';

class DateFormatter {
  static String today() {
    final now = DateTime.now();
    return DateFormat('yyyy-MM-dd').format(now);
  }

  static String format(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  static ({String start, String end}) weekRangeFromToday() {
    final now = DateTime.now();
    final nextWeek = now.add(const Duration(days: 7));

    return (start: format(now), end: format(nextWeek));
  }

  static String humanDate(String utcDateString) {
    final utcDate = DateTime.parse(utcDateString);
    final localDate = utcDate.toLocal();

    return DateFormat('EEE, dd MMM', 'es_ES')
        .format(localDate)
        .replaceAll('.', ''); // A veces agrega puntos en otros locales
  }

  static String humanTime(String utcDateString) {
    final utcDate = DateTime.parse(utcDateString);
    final localDate = utcDate.toLocal();

    return DateFormat(
      'hh:mm a',
      'es_ES',
    ).format(localDate).replaceAll("a. m.", "a.m.").replaceAll("p. m.", "p.m.");
  }
}
