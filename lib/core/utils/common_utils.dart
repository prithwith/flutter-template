import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

double statusHeight(BuildContext context) {
  return MediaQuery.of(context).viewPadding.top;
}

double navHeight(BuildContext context) {
  return MediaQuery.of(context).viewPadding.bottom;
}

void dismissKeyboard(BuildContext context) => FocusScope.of(context).unfocus();

bool isTodayOrPast(DateTime date) {
  DateTime now = DateTime.now();
  DateTime today = DateTime(now.year, now.month, now.day);
  DateTime givenDate = DateTime(date.year, date.month, date.day);

  return givenDate.isBefore(today) || givenDate.isAtSameMomentAs(today);
}

String formatFlexibleDateTime(String input) {
  try {
    final str = input.trim();
    DateTime? parsed;
    try {
      parsed = DateTime.parse(str);
    } catch (_) {}
    if (parsed == null &&
        str.contains(':') &&
        !str.contains('-') &&
        !str.contains('/')) {
      final formats = ['HH:mm', 'HH:mm:ss', 'hh:mm a'];
      for (final f in formats) {
        try {
          parsed = DateFormat(f).parse(str);
          return DateFormat('hh:mm a').format(parsed);
        } catch (_) {}
      }
    }
    if (parsed == null) {
      final formats = [
        'yyyy-MM-dd',
        'dd-MM-yyyy',
        'dd/MM/yyyy',
        'MM/dd/yyyy',
        'yyyy/MM/dd',
        'dd MMM yyyy',
        'MMM dd, yyyy',
      ];

      for (final f in formats) {
        try {
          parsed = DateFormat(f).parse(str);
          return DateFormat('MMM dd, yyyy').format(parsed);
        } catch (_) {}
      }
    }

    if (parsed == null) return input;

    final hasTime = str.contains(':');

    if (hasTime) {
      return DateFormat('MMM dd, yyyy • hh:mm a').format(parsed);
    }

    return DateFormat('MMM dd, yyyy').format(parsed);
  } catch (_) {
    return input;
  }
}
