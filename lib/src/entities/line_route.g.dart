// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineRoute _$LineRouteFromJson(Map<String, dynamic> json) {
  return LineRoute(
      routeCode: json['routeCode'] as String,
      name: json['name'] as String,
      direction: json['direction'] as String,
      originationName: json['originationName'] as String,
      destinationName: json['destinationName'] as String,
      originator: json['originator'] as String,
      destination: json['destination'] as String,
      serviceType: json['serviceType'] as String,
      validTo: json['validTo'] == null
          ? null
          : DateTime.parse(json['validTo'] as String),
      validFrom: json['validFrom'] == null
          ? null
          : DateTime.parse(json['validFrom'] as String));
}

Map<String, dynamic> _$LineRouteToJson(LineRoute instance) => <String, dynamic>{
      'routeCode': instance.routeCode,
      'name': instance.name,
      'direction': instance.direction,
      'originationName': instance.originationName,
      'destinationName': instance.destinationName,
      'originator': instance.originator,
      'destination': instance.destination,
      'serviceType': instance.serviceType,
      'validTo': instance.validTo?.toIso8601String(),
      'validFrom': instance.validFrom?.toIso8601String()
    };
