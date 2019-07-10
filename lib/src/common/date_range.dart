import '../internal/serializable.dart';

class DateRange implements Serializable {
  DateTime startDate;

  DateTime endDate;

  DateRange({
    this.startDate,
    this.endDate,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'DateRange[startDate=$startDate, endDate=$endDate]';
  }

  DateRange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    startDate =
        json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
  }

  static List<DateRange> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<DateRange>()
        : json.map((value) => DateRange.fromJson(value)).toList();
  }

  static Map<String, DateRange> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, DateRange>()
        : json.map((key, value) => MapEntry(key, DateRange.fromJson(value)));
  }
}
