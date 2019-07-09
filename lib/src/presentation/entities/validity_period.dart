class ValidityPeriod {
  DateTime fromDate;

  DateTime toDate;

  bool isNow;

  ValidityPeriod();

  @override
  String toString() {
    return 'ValidityPeriod[fromDate=$fromDate, toDate=$toDate, isNow=$isNow, ]';
  }

  ValidityPeriod.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    fromDate =
        json['fromDate'] == null ? null : DateTime.parse(json['fromDate']);
    toDate = json['toDate'] == null ? null : DateTime.parse(json['toDate']);
    isNow = json['isNow'];
  }

  Map<String, dynamic> toJson() {
    return {
      'fromDate': fromDate == null ? '' : fromDate.toUtc().toIso8601String(),
      'toDate': toDate == null ? '' : toDate.toUtc().toIso8601String(),
      'isNow': isNow
    };
  }

  static List<ValidityPeriod> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ValidityPeriod>()
        : json.map((value) => ValidityPeriod.fromJson(value)).toList();
  }

  static Map<String, ValidityPeriod> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, ValidityPeriod>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = ValidityPeriod.fromJson(value));
    }
    return map;
  }
}
