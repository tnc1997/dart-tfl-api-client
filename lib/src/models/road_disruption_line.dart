// using Tfl.Api.Common;

import 'package:json_annotation/json_annotation.dart';

part 'road_disruption_line.g.dart';

@JsonSerializable()
class RoadDisruptionLine {
  int? id;
  String? roadDisruptionId;
  bool? isDiversion;
  DateTime? startDate;
  DateTime? endDate;
  String? startTime;
  String? endTime;

  RoadDisruptionLine({
    this.id,
    this.roadDisruptionId,
    this.isDiversion,
    this.startDate,
    this.endDate,
    this.startTime,
    this.endTime,
  });

  factory RoadDisruptionLine.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RoadDisruptionLineFromJson(json);

  static List<RoadDisruptionLine> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RoadDisruptionLine.fromJson(value),
          )
          .toList();

  static Map<String, RoadDisruptionLine> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RoadDisruptionLine.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$RoadDisruptionLineToJson(this);
}
