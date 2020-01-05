import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/db_geography.dart';
import 'package:tfl_api_client/src/entities/road_disruption_impact_area.dart';
import 'package:tfl_api_client/src/entities/road_disruption_line.dart';
import 'package:tfl_api_client/src/entities/road_disruption_schedule.dart';
import 'package:tfl_api_client/src/entities/road_project.dart';
import 'package:tfl_api_client/src/entities/street.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'road_disruption.g.dart';

@JsonSerializable()
class RoadDisruption implements Serializable {
  String id;

  /// The URL to retrieve this road disruption.
  String url;

  /// The latitude and longitude (WGS84) of the centroid of the disruption, stored in a GeoJSON-formatted string.
  String point;

  /// The description of the severity of the disruption.
  String severity;

  /// The ordinal of the disruption based on severity, level of interest and corridor.
  int ordinal;

  /// The nature of disruption e.g. Traffic Incidents.
  String category;

  /// The sub-category of disruption e.g. Collapsed Manhole, Abnormal Load.
  String subCategory;

  /// The full text of comments describing the disruption, including details of any road closures and diversions, where appropriate.
  String comments;

  /// The full text of the most recent update from the LSTCC on the state of the disruption, including the current traffic impact and any advice to road users.
  String currentUpdate;

  /// The time when the last `currentUpdate` description was recorded, or null if no `currentUpdate` has been applied.
  DateTime currentUpdateDateTime;

  /// The ids of affected corridors, if any.
  List<String> corridorIds;

  /// The date and time on which the disruption started. For a planned disruption this date will be in the future. For unplanned disruptions, this will default to the date on which the disruption was first recorded, but may be adjusted by the operator.
  DateTime startDateTime;

  /// The date and time on which the disruption ended. For planned disruptions, this date will have a valid value. For unplanned disruptions in progress, this field will be omitted.
  DateTime endDateTime;

  /// The date and time on which the disruption was last modified in the system. This information can reliably be used by a developer to quickly compare two instances of the same disruption to determine if it has been changed.
  DateTime lastModifiedTime;

  /// This describes the level of potential impact on traffic operations of the disruption. High = a one-off disruption on a major or high profile route which will require a high level of operational attention. Medium = this is the default value. Low = a frequently occurring disruption which is well known.
  String levelOfInterest;

  /// The main road name / number (borough) or preset area name where the disruption is located. This might be useful for a map popup where space is limited.
  String location;

  /// This describes the status of the disruption. Active = currently in progress. Active Long Term = currently in progress and long term. Scheduled = scheduled to start within the next 180 days. Recurring Works = planned maintenance works that follow a regular routine or pattern and whose next occurrence is to start within the next 180 days. Recently Cleared = recently cleared in the last 24 hours. Note that the status of Scheduled or Recurring Works disruptions will change to Active when they start, and will change status again when they end.
  String status;

  /// The geography version of point for output as GeoJSON. Cannot use Geometry in a consistent way as non-TIMS disruptions do not have a polygon.
  DbGeography geography;

  /// The GeoJSON formatted latitude/longitude (WGS84) pairs forming an enclosed polyline or polygon. The polygon will only be included where affected streets information is not available for the disruption, would be inappropriate (e.g. a very large number of streets), or is centred on an area without streets (e.g. a football stadium).
  DbGeography geometry;

  /// The collection of zero or more streets affected by the disruption.
  List<Street> streets;

  /// True if the disruption is planned on a future date that is open to change; otherwise, false.
  bool isProvisional;

  /// True if any of the affected Streets have a FullClosure status; otherwise, false. A disruption that has HasClosures is considered a Severe or Serious disruption for severity filtering purposes.
  bool hasClosures;

  /// The text of any associated link.
  String linkText;

  /// The URL of any associated link.
  String linkUrl;

  /// The associated road project.
  RoadProject roadProject;

  DateTime publishStartDate;

  DateTime publishEndDate;

  String timeFrame;

  List<RoadDisruptionLine> roadDisruptionLines;

  List<RoadDisruptionImpactArea> roadDisruptionImpactAreas;

  List<RoadDisruptionSchedule> recurringSchedules;

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
    this.geography,
    this.geometry,
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

  factory RoadDisruption.fromJson(Map<String, dynamic> json) {
    return _$RoadDisruptionFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$RoadDisruptionToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
