/// Lenient scalar converters for Laravel API responses.
///
/// The backend sometimes serializes numeric fields as JSON strings (e.g.
/// `"150.00"`) instead of native JSON numbers, depending on cast/resource
/// configuration on a given field. These converters tolerate either
/// encoding so a single inconsistently-serialized field doesn't crash
/// `fromJson`. Use them (via `@JsonKey(fromJson: ...)`) on any field backed
/// by a Laravel `decimal`/`integer` cast.
double toDoubleLenient(dynamic value) =>
    (value is num ? value : num.parse(value as String)).toDouble();

double? toDoubleOrNullLenient(dynamic value) =>
    value == null ? null : toDoubleLenient(value);

int toIntLenient(dynamic value) =>
    (value is num ? value : num.parse(value as String)).toInt();

int? toIntOrNullLenient(dynamic value) =>
    value == null ? null : toIntLenient(value);
