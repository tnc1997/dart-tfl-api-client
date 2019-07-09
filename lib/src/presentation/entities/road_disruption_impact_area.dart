import '../../system/data/spacial/db_geography.dart';

class RoadDisruptionImpactArea {
  int id;

  String roadDisruptionId;

  DbGeography polygon;

  DateTime startDate;

  DateTime endDate;

  String startTime;

  String endTime;

  RoadDisruptionImpactArea();

  @override
  String toString() {
    return 'RoadDisruptionImpactArea[id=$id, roadDisruptionId=$roadDisruptionId, polygon=$polygon, startDate=$startDate, endDate=$endDate, startTime=$startTime, endTime=$endTime, ]';
  }

  RoadDisruptionImpactArea.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    roadDisruptionId = json['roadDisruptionId'];
    polygon = DbGeography.fromJson(json['polygon']);
    startDate =
        json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
    startTime = json['startTime'];
    endTime = json['endTime'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'roadDisruptionId': roadDisruptionId,
      'polygon': polygon,
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String(),
      'startTime': startTime,
      'endTime': endTime
    };
  }

  static List<RoadDisruptionImpactArea> listFromJson(List<dynamic> json) {
    return json == null
        ? List<RoadDisruptionImpactArea>()
        : json
            .map((value) => RoadDisruptionImpactArea.fromJson(value))
            .toList();
  }

  static Map<String, RoadDisruptionImpactArea> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, RoadDisruptionImpactArea>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = RoadDisruptionImpactArea.fromJson(value));
    }
    return map;
  }
}
