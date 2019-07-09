import '../../internal/serializable.dart';

class ValidityPeriod implements Serializable {
  DateTime fromDate;

  DateTime toDate;

  bool isNow;

  ValidityPeriod({
    this.fromDate,
    this.toDate,
    this.isNow,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'fromDate': fromDate == null ? '' : fromDate.toUtc().toIso8601String(),
      'toDate': toDate == null ? '' : toDate.toUtc().toIso8601String(),
      'isNow': isNow,
    };
  }

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

  static List<ValidityPeriod> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<ValidityPeriod>()
        : json.map((value) => ValidityPeriod.fromJson(value)).toList();
  }

  static Map<String, ValidityPeriod> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, ValidityPeriod>()
        : json
            .map((key, value) => MapEntry(key, ValidityPeriod.fromJson(value)));
  }
}
