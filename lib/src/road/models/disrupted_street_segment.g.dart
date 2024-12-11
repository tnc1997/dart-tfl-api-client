// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disrupted_street_segment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DisruptedStreetSegment _$DisruptedStreetSegmentFromJson(
    Map<String, dynamic> json) {
  return DisruptedStreetSegment(
    streetName: json['streetName'] as String?,
    closure: json['closure'] as String?,
    directions: json['directions'] as String?,
    lineString: json['lineString'] as String?,
    distruptedStreetId: json['distruptedStreetId'] as String?,
    disruptionId: json['disruptionId'] as String?,
    startLat: (json['startLat'] as num?)?.toDouble(),
    startLon: (json['startLon'] as num?)?.toDouble(),
    endLat: (json['endLat'] as num?)?.toDouble(),
    endLon: (json['endLon'] as num?)?.toDouble(),
    severity: json['severity'] as String?,
    category: json['category'] as String?,
    subCategory: json['subCategory'] as String?,
    comments: json['comments'] as String?,
    startDateTime: json['startDateTime'] == null
        ? null
        : DateTime.parse(json['startDateTime'] as String),
    endDateTime: json['endDateTime'] == null
        ? null
        : DateTime.parse(json['endDateTime'] as String),
    levelOfInterest: json['levelOfInterest'] as String?,
    location: json['location'] as String?,
    recurringSchedules: (json['recurringSchedules'] as List<dynamic>?)
        ?.map((e) => RoadDisruptionSchedule.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$DisruptedStreetSegmentToJson(
        DisruptedStreetSegment instance) =>
    <String, dynamic>{
      'streetName': instance.streetName,
      'closure': instance.closure,
      'directions': instance.directions,
      'lineString': instance.lineString,
      'distruptedStreetId': instance.distruptedStreetId,
      'disruptionId': instance.disruptionId,
      'startLat': instance.startLat,
      'startLon': instance.startLon,
      'endLat': instance.endLat,
      'endLon': instance.endLon,
      'severity': instance.severity,
      'category': instance.category,
      'subCategory': instance.subCategory,
      'comments': instance.comments,
      'startDateTime': instance.startDateTime?.toIso8601String(),
      'endDateTime': instance.endDateTime?.toIso8601String(),
      'levelOfInterest': instance.levelOfInterest,
      'location': instance.location,
      'recurringSchedules': instance.recurringSchedules,
    };
