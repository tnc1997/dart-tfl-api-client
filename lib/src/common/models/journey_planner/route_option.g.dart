// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteOption _$RouteOptionFromJson(Map<String, dynamic> json) {
  return RouteOption(
    id: json['id'] as String?,
    name: json['name'] as String?,
    directions: (json['directions'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    lineIdentifier: json['lineIdentifier'] == null
        ? null
        : Identifier.fromJson(json['lineIdentifier'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RouteOptionToJson(RouteOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'directions': instance.directions,
      'lineIdentifier': instance.lineIdentifier,
    };
