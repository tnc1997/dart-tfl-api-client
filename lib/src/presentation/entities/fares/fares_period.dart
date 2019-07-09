class FaresPeriod {
  int id;

  DateTime startDate;

  DateTime viewableDate;

  DateTime endDate;

  bool isFuture;

  FaresPeriod();

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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'viewableDate':
          viewableDate == null ? '' : viewableDate.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String(),
      'isFuture': isFuture
    };
  }

  static List<FaresPeriod> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FaresPeriod>()
        : json.map((value) => FaresPeriod.fromJson(value)).toList();
  }

  static Map<String, FaresPeriod> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, FaresPeriod>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = FaresPeriod.fromJson(value));
    }
    return map;
  }
}
