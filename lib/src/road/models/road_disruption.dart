import '../../common/models/identifiable.dart';
import '../../common/models/identifier.dart';
import 'road_disruption_impact_area.dart';
import 'road_disruption_line.dart';
import 'road_disruption_schedule.dart';
import 'road_project.dart';
import 'street.dart';

class RoadDisruption implements Identifiable {
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
  ) {
    return RoadDisruption(
      id: json['id'] as String?,
      url: json['url'] as String?,
      point: json['point'] as String?,
      severity: json['severity'] as String?,
      ordinal: (json['ordinal'] as num?)?.toInt(),
      category: json['category'] as String?,
      subCategory: json['subCategory'] as String?,
      comments: json['comments'] as String?,
      currentUpdate: json['currentUpdate'] as String?,
      currentUpdateDateTime: json['currentUpdateDateTime'] == null
          ? null
          : DateTime.parse(json['currentUpdateDateTime'] as String),
      corridorIds: (json['corridorIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      startDateTime: json['startDateTime'] == null
          ? null
          : DateTime.parse(json['startDateTime'] as String),
      endDateTime: json['endDateTime'] == null
          ? null
          : DateTime.parse(json['endDateTime'] as String),
      lastModifiedTime: json['lastModifiedTime'] == null
          ? null
          : DateTime.parse(json['lastModifiedTime'] as String),
      levelOfInterest: json['levelOfInterest'] as String?,
      location: json['location'] as String?,
      status: json['status'] as String?,
      streets: (json['streets'] as List<dynamic>?)
          ?.map((e) => Street.fromJson(e as Map<String, dynamic>))
          .toList(),
      isProvisional: json['isProvisional'] as bool?,
      hasClosures: json['hasClosures'] as bool?,
      linkText: json['linkText'] as String?,
      linkUrl: json['linkUrl'] as String?,
      roadProject: json['roadProject'] == null
          ? null
          : RoadProject.fromJson(json['roadProject'] as Map<String, dynamic>),
      publishStartDate: json['publishStartDate'] == null
          ? null
          : DateTime.parse(json['publishStartDate'] as String),
      publishEndDate: json['publishEndDate'] == null
          ? null
          : DateTime.parse(json['publishEndDate'] as String),
      timeFrame: json['timeFrame'] as String?,
      roadDisruptionLines: (json['roadDisruptionLines'] as List<dynamic>?)
          ?.map((e) => RoadDisruptionLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      roadDisruptionImpactAreas:
          (json['roadDisruptionImpactAreas'] as List<dynamic>?)
              ?.map((e) =>
                  RoadDisruptionImpactArea.fromJson(e as Map<String, dynamic>))
              .toList(),
      recurringSchedules: (json['recurringSchedules'] as List<dynamic>?)
          ?.map(
              (e) => RoadDisruptionSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Identifier toIdentifier() {
    return Identifier(
      id: id,
      name: roadProject?.projectName ?? 'RoadDisruption #$id',
      uri: '/road/all/disruption/$id',
      type: 'RoadDisruption',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'point': point,
      'severity': severity,
      'ordinal': ordinal,
      'category': category,
      'subCategory': subCategory,
      'comments': comments,
      'currentUpdate': currentUpdate,
      'currentUpdateDateTime': currentUpdateDateTime?.toIso8601String(),
      'corridorIds': corridorIds,
      'startDateTime': startDateTime?.toIso8601String(),
      'endDateTime': endDateTime?.toIso8601String(),
      'lastModifiedTime': lastModifiedTime?.toIso8601String(),
      'levelOfInterest': levelOfInterest,
      'location': location,
      'status': status,
      'streets': streets,
      'isProvisional': isProvisional,
      'hasClosures': hasClosures,
      'linkText': linkText,
      'linkUrl': linkUrl,
      'roadProject': roadProject,
      'publishStartDate': publishStartDate?.toIso8601String(),
      'publishEndDate': publishEndDate?.toIso8601String(),
      'timeFrame': timeFrame,
      'roadDisruptionLines': roadDisruptionLines,
      'roadDisruptionImpactAreas': roadDisruptionImpactAreas,
      'recurringSchedules': recurringSchedules,
    };
  }
}
