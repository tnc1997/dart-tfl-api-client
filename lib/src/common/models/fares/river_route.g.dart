// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'river_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RiverRoute _$RiverRouteFromJson(Map<String, dynamic> json) {
  return RiverRoute(
    routeDescription: json['routeDescription'] as String?,
    routeCode: json['routeCode'] as String?,
    operator: json['operator'] as String?,
    routes: (json['routes'] as List<dynamic>?)
        ?.map((e) => FareBounds.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$RiverRouteToJson(RiverRoute instance) =>
    <String, dynamic>{
      'routeDescription': instance.routeDescription,
      'routeCode': instance.routeCode,
      'operator': instance.operator,
      'routes': instance.routes,
    };
