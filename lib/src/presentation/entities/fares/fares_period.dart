import '../../../internal/serializable.dart';

class FaresPeriod implements Serializable {
  int id;

  DateTime startDate;

  DateTime viewableDate;

  DateTime endDate;

  bool isFuture;

  FaresPeriod({
    this.id,
    this.startDate,
    this.viewableDate,
    this.endDate,
    this.isFuture,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'viewableDate':
          viewableDate == null ? '' : viewableDate.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String(),
      'isFuture': isFuture,
    };
  }

  @override
  String toString() {
    return 'FaresPeriod[id=$id, startDate=$startDate, viewableDate=$viewableDate, endDate=$endDate, isFuture=$isFuture, ]';
  }

  FaresPeriod.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    id = json['id'];
    startDate =
        json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    viewableDate = json['viewableDate'] == null
        ? null
        : DateTime.parse(json['viewableDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
    isFuture = json['isFuture'];
  }

  static List<FaresPeriod> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<FaresPeriod>()
        : json.map((value) => FaresPeriod.fromJson(value)).toList();
  }

  static Map<String, FaresPeriod> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, FaresPeriod>()
        : json.map((key, value) => MapEntry(key, FaresPeriod.fromJson(value)));
  }
}
