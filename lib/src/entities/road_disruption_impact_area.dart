import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/db_geography.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'road_disruption_impact_area.g.dart';

@JsonSerializable()
class RoadDisruptionImpactArea implements Serializable {
  int id;

  String roadDisruptionId;

  DbGeography polygon;

  DateTime startDate;

  DateTime endDate;

  String startTime;

  String endTime;

  RoadDisruptionImpactArea({
    this.id,
    this.roadDisruptionId,
    this.polygon,
    this.startDate,
    this.endDate,
    this.startTime,
    this.endTime,
  });

  factory RoadDisruptionImpactArea.fromJson(Map<String, dynamic> json) {
    return _$RoadDisruptionImpactAreaFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$RoadDisruptionImpactAreaToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
