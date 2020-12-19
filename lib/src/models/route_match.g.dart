// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteMatch _$RouteMatchFromJson(Map<String, dynamic> json) {
  return RouteMatch(
    routeSequence: (json['routeSequence'] as List<dynamic>?)
        ?.map((e) => RouteSequence.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$RouteMatchToJson(RouteMatch instance) =>
    <String, dynamic>{
      'routeSequence': instance.routeSequence,
    };
