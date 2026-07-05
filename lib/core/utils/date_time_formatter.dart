import 'package:intl/intl.dart';

/// Helpers for the ISO8601 UTC timestamps the API sends/expects, and the
/// "HH:MM" local-time strings used by availability slots.
class DateTimeFormatter {
  const DateTimeFormatter._();

  static DateTime parseUtc(String iso8601) => DateTime.parse(iso8601).toLocal();

  static String toApiString(DateTime local) => local.toUtc().toIso8601String();

  static final _shortDate = DateFormat('d MMM yyyy');
  static final _longDate = DateFormat('EEEE, d MMMM yyyy');
  static final _time = DateFormat('h:mm a');

  static String shortDate(DateTime dateTime) => _shortDate.format(dateTime);

  static String longDate(DateTime dateTime) => _longDate.format(dateTime);

  static String time(DateTime dateTime) => _time.format(dateTime);

  static String dateTimeLabel(DateTime dateTime) =>
      '${shortDate(dateTime)} · ${time(dateTime)}';
}
