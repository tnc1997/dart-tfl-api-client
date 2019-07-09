import '../../internal/serializable.dart';
import '../../system/data/spacial/db_geography.dart';

class RoadDisruptionLine implements Serializable {
  int id;

  String roadDisruptionId;

  bool isDiversion;

  DbGeography multiLineString;

  DateTime startDate;

  DateTime endDate;

  String startTime;

  String endTime;

  RoadDisruptionLine({
    this.id,
    this.roadDisruptionId,
    this.isDiversion,
    this.multiLineString,
    this.startDate,
    this.endDate,
    this.startTime,
    this.endTime,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'roadDisruptionId': roadDisruptionId,
      'isDiversion': isDiversion,
      'multiLineString': multiLineString,
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String(),
      'startTime': startTime,
      'endTime': endTime,
    };
  }

  @override
  String toString() {
    return 'RoadDisruptionLine[id=$id, roadDisruptionId=$roadDisruptionId, isDiversion=$isDiversion, multiLineString=$multiLineString, startDate=$startDate, endDate=$endDate, startTime=$startTime, endTime=$endTime, ]';
  }

  RoadDisruptionLine.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    id = json['id'];
    roadDisruptionId = json['roadDisruptionId'];
    isDiversion = json['isDiversion'];
    multiLineString = DbGeography.fromJson(json['multiLineString']);
    startDate =
        json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
    startTime = json['startTime'];
    endTime = json['endTime'];
  }

  static List<RoadDisruptionLine> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<RoadDisruptionLine>()
        : json.map((value) => RoadDisruptionLine.fromJson(value)).toList();
  }

  static Map<String, RoadDisruptionLine> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, RoadDisruptionLine>()
        : json.map(
            (key, value) => MapEntry(key, RoadDisruptionLine.fromJson(value)));
  }
}
