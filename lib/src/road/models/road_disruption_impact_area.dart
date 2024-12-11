// using Tfl.Api.Common;

import 'package:json_annotation/json_annotation.dart';

part 'road_disruption_impact_area.g.dart';

@JsonSerializable()
class RoadDisruptionImpactArea {
  int? id;
  String? roadDisruptionId;
  DateTime? startDate;
  DateTime? endDate;
  String? startTime;
  String? endTime;

  RoadDisruptionImpactArea({
    this.id,
    this.roadDisruptionId,
    this.startDate,
    this.endDate,
    this.startTime,
    this.endTime,
  });

  factory RoadDisruptionImpactArea.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RoadDisruptionImpactAreaFromJson(json);

  static List<RoadDisruptionImpactArea> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RoadDisruptionImpactArea.fromJson(value),
          )
          .toList();

  static Map<String, RoadDisruptionImpactArea> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RoadDisruptionImpactArea.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$RoadDisruptionImpactAreaToJson(this);
}
