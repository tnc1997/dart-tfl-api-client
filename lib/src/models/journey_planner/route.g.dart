// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Route _$RouteFromJson(Map<String, dynamic> json) {
  return Route(
    departureDate: json['departureDate'] == null
        ? null
        : DateTime.parse(json['departureDate'] as String),
    arrivalDate: json['arrivalDate'] == null
        ? null
        : DateTime.parse(json['arrivalDate'] as String),
    publicDuration: json['publicDuration'] as String?,
    maps: (json['maps'] as List<dynamic>?)
        ?.map((e) => MapItem.fromJson(e as Map<String, dynamic>))
        .toList(),
    partialRoutes: (json['partialRoutes'] as List<dynamic>?)
        ?.map((e) => PartialRoute.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$RouteToJson(Route instance) => <String, dynamic>{
      'departureDate': instance.departureDate?.toIso8601String(),
      'arrivalDate': instance.arrivalDate?.toIso8601String(),
      'publicDuration': instance.publicDuration,
      'maps': instance.maps,
      'partialRoutes': instance.partialRoutes,
    };
