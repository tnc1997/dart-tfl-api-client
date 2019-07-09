import '../../system/data/spacial/db_geography.dart';

class RoadDisruptionLine {
  int id;

  String roadDisruptionId;

  bool isDiversion;

  DbGeography multiLineString;

  DateTime startDate;

  DateTime endDate;

  String startTime;

  String endTime;

  RoadDisruptionLine();

  @override
  String toString() {
    return 'RoadDisruptionLine[id=$id, roadDisruptionId=$roadDisruptionId, isDiversion=$isDiversion, multiLineString=$multiLineString, startDate=$startDate, endDate=$endDate, startTime=$startTime, endTime=$endTime, ]';
  }

  RoadDisruptionLine.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    roadDisruptionId = json['roadDisruptionId'];
    isDiversion = json['isDiversion'];
    multiLineString = new DbGeography.fromJson(json['multiLineString']);
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
      'isDiversion': isDiversion,
      'multiLineString': multiLineString,
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String(),
      'startTime': startTime,
      'endTime': endTime
    };
  }

  static List<RoadDisruptionLine> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<RoadDisruptionLine>()
        : json.map((value) => new RoadDisruptionLine.fromJson(value)).toList();
  }

  static Map<String, RoadDisruptionLine> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RoadDisruptionLine>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new RoadDisruptionLine.fromJson(value));
    }
    return map;
  }
}
