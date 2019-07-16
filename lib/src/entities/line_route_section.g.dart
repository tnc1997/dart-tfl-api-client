// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_route_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineRouteSection _$LineRouteSectionFromJson(Map<String, dynamic> json) {
  return LineRouteSection(
      routeId: json['routeId'] as int,
      direction: json['direction'] as String,
      destination: json['destination'] as String,
      fromStation: json['fromStation'] as String,
      toStation: json['toStation'] as String,
      serviceType: json['serviceType'] as String,
      vehicleDestinationText: json['vehicleDestinationText'] as String);
}

Map<String, dynamic> _$LineRouteSectionToJson(LineRouteSection instance) =>
    <String, dynamic>{
      'routeId': instance.routeId,
      'direction': instance.direction,
      'destination': instance.destination,
      'fromStation': instance.fromStation,
      'toStation': instance.toStation,
      'serviceType': instance.serviceType,
      'vehicleDestinationText': instance.vehicleDestinationText
    };
