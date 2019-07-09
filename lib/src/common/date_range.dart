class DateRange {
  DateTime startDate;

  DateTime endDate;

  DateRange();

  @override
  String toString() {
    return 'DateRange[startDate=$startDate, endDate=$endDate, ]';
  }

  DateRange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    startDate =
        json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
  }

  Map<String, dynamic> toJson() {
    return {
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String()
    };
  }

  static List<DateRange> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DateRange>()
        : json.map((value) => DateRange.fromJson(value)).toList();
  }

  static Map<String, DateRange> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, DateRange>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = DateRange.fromJson(value));
    }
    return map;
  }
}
