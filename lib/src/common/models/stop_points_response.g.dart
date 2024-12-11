// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop_points_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StopPointsResponse _$StopPointsResponseFromJson(Map<String, dynamic> json) {
  return StopPointsResponse(
    centrePoint: (json['centrePoint'] as List<dynamic>?)
        ?.map((e) => (e as num).toDouble())
        .toList(),
    stopPoints: (json['stopPoints'] as List<dynamic>?)
        ?.map((e) => StopPoint.fromJson(e as Map<String, dynamic>))
        .toList(),
    pageSize: json['pageSize'] as int?,
    total: json['total'] as int?,
    page: json['page'] as int?,
  );
}

Map<String, dynamic> _$StopPointsResponseToJson(StopPointsResponse instance) =>
    <String, dynamic>{
      'centrePoint': instance.centrePoint,
      'stopPoints': instance.stopPoints,
      'pageSize': instance.pageSize,
      'total': instance.total,
      'page': instance.page,
    };
