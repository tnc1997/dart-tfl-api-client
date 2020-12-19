// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteSection _$RouteSectionFromJson(Map<String, dynamic> json) {
  return RouteSection(
    id: json['id'] as String?,
    lineId: json['lineId'] as String?,
    routeCode: json['routeCode'] as String?,
    name: json['name'] as String?,
    lineString: json['lineString'] as String?,
    direction: json['direction'] as String?,
    originationName: json['originationName'] as String?,
    destinationName: json['destinationName'] as String?,
    validTo: json['validTo'] == null
        ? null
        : DateTime.parse(json['validTo'] as String),
    validFrom: json['validFrom'] == null
        ? null
        : DateTime.parse(json['validFrom'] as String),
    routeSectionNaptanEntrySequence: (json['routeSectionNaptanEntrySequence']
            as List<dynamic>?)
        ?.map((e) =>
            RouteSectionNaptanEntrySequence.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$RouteSectionToJson(RouteSection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lineId': instance.lineId,
      'routeCode': instance.routeCode,
      'name': instance.name,
      'lineString': instance.lineString,
      'direction': instance.direction,
      'originationName': instance.originationName,
      'destinationName': instance.destinationName,
      'validTo': instance.validTo?.toIso8601String(),
      'validFrom': instance.validFrom?.toIso8601String(),
      'routeSectionNaptanEntrySequence':
          instance.routeSectionNaptanEntrySequence,
    };
