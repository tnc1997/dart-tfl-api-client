// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'road_disruption.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoadDisruption _$RoadDisruptionFromJson(Map<String, dynamic> json) {
  return RoadDisruption(
    id: json['id'] as String?,
    url: json['url'] as String?,
    point: json['point'] as String?,
    severity: json['severity'] as String?,
    ordinal: json['ordinal'] as int?,
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
    roadDisruptionImpactAreas: (json['roadDisruptionImpactAreas']
            as List<dynamic>?)
        ?.map(
            (e) => RoadDisruptionImpactArea.fromJson(e as Map<String, dynamic>))
        .toList(),
    recurringSchedules: (json['recurringSchedules'] as List<dynamic>?)
        ?.map((e) => RoadDisruptionSchedule.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$RoadDisruptionToJson(RoadDisruption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'point': instance.point,
      'severity': instance.severity,
      'ordinal': instance.ordinal,
      'category': instance.category,
      'subCategory': instance.subCategory,
      'comments': instance.comments,
      'currentUpdate': instance.currentUpdate,
      'currentUpdateDateTime':
          instance.currentUpdateDateTime?.toIso8601String(),
      'corridorIds': instance.corridorIds,
      'startDateTime': instance.startDateTime?.toIso8601String(),
      'endDateTime': instance.endDateTime?.toIso8601String(),
      'lastModifiedTime': instance.lastModifiedTime?.toIso8601String(),
      'levelOfInterest': instance.levelOfInterest,
      'location': instance.location,
      'status': instance.status,
      'streets': instance.streets,
      'isProvisional': instance.isProvisional,
      'hasClosures': instance.hasClosures,
      'linkText': instance.linkText,
      'linkUrl': instance.linkUrl,
      'roadProject': instance.roadProject,
      'publishStartDate': instance.publishStartDate?.toIso8601String(),
      'publishEndDate': instance.publishEndDate?.toIso8601String(),
      'timeFrame': instance.timeFrame,
      'roadDisruptionLines': instance.roadDisruptionLines,
      'roadDisruptionImpactAreas': instance.roadDisruptionImpactAreas,
      'recurringSchedules': instance.recurringSchedules,
    };
