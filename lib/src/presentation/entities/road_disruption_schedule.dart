import '../../internal/serializable.dart';

class RoadDisruptionSchedule implements Serializable {
  DateTime startTime;

  DateTime endTime;

  RoadDisruptionSchedule({
    this.startTime,
    this.endTime,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'startTime': startTime == null ? '' : startTime.toUtc().toIso8601String(),
      'endTime': endTime == null ? '' : endTime.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'RoadDisruptionSchedule[startTime=$startTime, endTime=$endTime]';
  }

  RoadDisruptionSchedule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    startTime =
        json['startTime'] == null ? null : DateTime.parse(json['startTime']);
    endTime = json['endTime'] == null ? null : DateTime.parse(json['endTime']);
  }

  static List<RoadDisruptionSchedule> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<RoadDisruptionSchedule>()
        : json.map((value) => RoadDisruptionSchedule.fromJson(value)).toList();
  }

  static Map<String, RoadDisruptionSchedule> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, RoadDisruptionSchedule>()
        : json.map((key, value) =>
            MapEntry(key, RoadDisruptionSchedule.fromJson(value)));
  }
}
