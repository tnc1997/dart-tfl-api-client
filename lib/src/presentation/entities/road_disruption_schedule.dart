class RoadDisruptionSchedule {
  DateTime startTime;

  DateTime endTime;

  RoadDisruptionSchedule();

  @override
  String toString() {
    return 'RoadDisruptionSchedule[startTime=$startTime, endTime=$endTime, ]';
  }

  RoadDisruptionSchedule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    startTime =
        json['startTime'] == null ? null : DateTime.parse(json['startTime']);
    endTime = json['endTime'] == null ? null : DateTime.parse(json['endTime']);
  }

  Map<String, dynamic> toJson() {
    return {
      'startTime': startTime == null ? '' : startTime.toUtc().toIso8601String(),
      'endTime': endTime == null ? '' : endTime.toUtc().toIso8601String()
    };
  }

  static List<RoadDisruptionSchedule> listFromJson(List<dynamic> json) {
    return json == null
        ? List<RoadDisruptionSchedule>()
        : json.map((value) => RoadDisruptionSchedule.fromJson(value)).toList();
  }

  static Map<String, RoadDisruptionSchedule> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, RoadDisruptionSchedule>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = RoadDisruptionSchedule.fromJson(value));
    }
    return map;
  }
}
