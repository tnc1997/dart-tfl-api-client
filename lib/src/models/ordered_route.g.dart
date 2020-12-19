// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ordered_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderedRoute _$OrderedRouteFromJson(Map<String, dynamic> json) {
  return OrderedRoute(
    name: json['name'] as String?,
    naptanIds:
        (json['naptanIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
    serviceType: json['serviceType'] as String?,
  );
}

Map<String, dynamic> _$OrderedRouteToJson(OrderedRoute instance) =>
    <String, dynamic>{
      'name': instance.name,
      'naptanIds': instance.naptanIds,
      'serviceType': instance.serviceType,
    };
