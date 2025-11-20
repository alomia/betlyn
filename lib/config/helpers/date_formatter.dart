import 'package:intl/intl.dart';

class DateFormatter {
  static final DateFormat _formatter = DateFormat('yyyy-MM-dd');
  static final DateFormat _humanReadableFormatter = DateFormat('MMM, dd yyyy', 'en_US');

  static String toHumanReadable(DateTime dateTime) {
    return _humanReadableFormatter.format(dateTime);
  }

  static String today() {
    return _formatter.format(DateTime.now());
  }

  static String format(DateTime date) {
    return _formatter.format(date);
  }

  static String nextDays(int days) {
    return _formatter.format(
      DateTime.now().add(Duration(days: days)),
    );
  }

  static ({String start, String end}) range(int days) {
    final now = DateTime.now();
    return (
      start: _formatter.format(now),
      end: _formatter.format(now.add(Duration(days: days))),
    );
  }
}
