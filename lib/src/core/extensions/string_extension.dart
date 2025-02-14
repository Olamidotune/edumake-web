import 'package:intl/intl.dart';

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}

String formatLocalTime(String? timestamp) {
  if (timestamp == null || timestamp.isEmpty) {
    return '';
  }
  try {
    final utcTime = DateTime.parse(timestamp);
    final localTime = utcTime.toLocal();

    return DateFormat('dd/MM/yyyy HH:mm a').format(localTime);
  } catch (e) {
    return timestamp;
  }
}
