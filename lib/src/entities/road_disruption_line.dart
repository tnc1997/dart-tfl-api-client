import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/db_geography.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'road_disruption_line.g.dart';

@JsonSerializable()
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

  factory RoadDisruptionLine.fromJson(Map<String, dynamic> json) {
    return _$RoadDisruptionLineFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$RoadDisruptionLineToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
