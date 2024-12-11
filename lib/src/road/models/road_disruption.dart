import 'package:json_annotation/json_annotation.dart';

import 'road_disruption_impact_area.dart';
import 'road_disruption_line.dart';
import 'road_disruption_schedule.dart';
import 'road_project.dart';
import 'street.dart';

part 'road_disruption.g.dart';

@JsonSerializable()
class RoadDisruption {
  String? id;
  String? url;
  String? point;
  String? severity;
  int? ordinal;
  String? category;
  String? subCategory;
  String? comments;
  String? currentUpdate;
  DateTime? currentUpdateDateTime;
  List<String>? corridorIds;
  DateTime? startDateTime;
  DateTime? endDateTime;
  DateTime? lastModifiedTime;
  String? levelOfInterest;
  String? location;
  String? status;
  List<Street>? streets;
  bool? isProvisional;
  bool? hasClosures;
  String? linkText;
  String? linkUrl;
  RoadProject? roadProject;
  DateTime? publishStartDate;
  DateTime? publishEndDate;
  String? timeFrame;
  List<RoadDisruptionLine>? roadDisruptionLines;
  List<RoadDisruptionImpactArea>? roadDisruptionImpactAreas;
  List<RoadDisruptionSchedule>? recurringSchedules;

  RoadDisruption({
    this.id,
    this.url,
    this.point,
    this.severity,
    this.ordinal,
    this.category,
    this.subCategory,
    this.comments,
    this.currentUpdate,
    this.currentUpdateDateTime,
    this.corridorIds,
    this.startDateTime,
    this.endDateTime,
    this.lastModifiedTime,
    this.levelOfInterest,
    this.location,
    this.status,
    this.streets,
    this.isProvisional,
    this.hasClosures,
    this.linkText,
    this.linkUrl,
    this.roadProject,
    this.publishStartDate,
    this.publishEndDate,
    this.timeFrame,
    this.roadDisruptionLines,
    this.roadDisruptionImpactAreas,
    this.recurringSchedules,
  });

  factory RoadDisruption.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RoadDisruptionFromJson(json);

  static List<RoadDisruption> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RoadDisruption.fromJson(value),
          )
          .toList();

  static Map<String, RoadDisruption> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RoadDisruption.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$RoadDisruptionToJson(this);
}
