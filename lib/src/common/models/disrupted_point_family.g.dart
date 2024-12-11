// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disrupted_point_family.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DisruptedPointFamily _$DisruptedPointFamilyFromJson(Map<String, dynamic> json) {
  return DisruptedPointFamily(
    naptanId: json['naptanId'] as String?,
    disruptions: (json['disruptions'] as List<dynamic>?)
        ?.map((e) => DisruptedPoint.fromJson(e as Map<String, dynamic>))
        .toList(),
    children: (json['children'] as List<dynamic>?)
        ?.map((e) => DisruptedPointFamily.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$DisruptedPointFamilyToJson(
        DisruptedPointFamily instance) =>
    <String, dynamic>{
      'naptanId': instance.naptanId,
      'disruptions': instance.disruptions,
      'children': instance.children,
    };
