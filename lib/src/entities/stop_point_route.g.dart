// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop_point_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StopPointRoute _$StopPointRouteFromJson(Map<String, dynamic> json) {
  return StopPointRoute(
      naptanId: json['naptanId'] as String,
      lineId: json['lineId'] as String,
      mode: json['mode'] as String,
      validFrom: json['validFrom'] == null
          ? null
          : DateTime.parse(json['validFrom'] as String),
      validTo: json['validTo'] == null
          ? null
          : DateTime.parse(json['validTo'] as String),
      direction: json['direction'] as String,
      routeSectionName: json['routeSectionName'] as String,
      lineString: json['lineString'] as String,
      isActive: json['isActive'] as bool,
      serviceType: json['serviceType'] as String,
      vehicleDestinationText: json['vehicleDestinationText'] as String,
      destinationName: json['destinationName'] as String);
}

Map<String, dynamic> _$StopPointRouteToJson(StopPointRoute instance) =>
    <String, dynamic>{
      'naptanId': instance.naptanId,
      'lineId': instance.lineId,
      'mode': instance.mode,
      'validFrom': instance.validFrom?.toIso8601String(),
      'validTo': instance.validTo?.toIso8601String(),
      'direction': instance.direction,
      'routeSectionName': instance.routeSectionName,
      'lineString': instance.lineString,
      'isActive': instance.isActive,
      'serviceType': instance.serviceType,
      'vehicleDestinationText': instance.vehicleDestinationText,
      'destinationName': instance.destinationName
    };
