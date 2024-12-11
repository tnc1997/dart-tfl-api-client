import 'package:json_annotation/json_annotation.dart';

import 'road_disruption_schedule.dart';

part 'disrupted_street_segment.g.dart';

@JsonSerializable()
class DisruptedStreetSegment {
  String? streetName;
  String? closure;
  String? directions;
  String? lineString;
  String? distruptedStreetId;
  String? disruptionId;
  double? startLat;
  double? startLon;
  double? endLat;
  double? endLon;
  String? severity;
  String? category;
  String? subCategory;
  String? comments;
  DateTime? startDateTime;
  DateTime? endDateTime;
  String? levelOfInterest;
  String? location;
  List<RoadDisruptionSchedule>? recurringSchedules;

  DisruptedStreetSegment({
    this.streetName,
    this.closure,
    this.directions,
    this.lineString,
    this.distruptedStreetId,
    this.disruptionId,
    this.startLat,
    this.startLon,
    this.endLat,
    this.endLon,
    this.severity,
    this.category,
    this.subCategory,
    this.comments,
    this.startDateTime,
    this.endDateTime,
    this.levelOfInterest,
    this.location,
    this.recurringSchedules,
  });

  factory DisruptedStreetSegment.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DisruptedStreetSegmentFromJson(json);

  static List<DisruptedStreetSegment> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => DisruptedStreetSegment.fromJson(value),
          )
          .toList();

  static Map<String, DisruptedStreetSegment> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          DisruptedStreetSegment.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$DisruptedStreetSegmentToJson(this);
}
