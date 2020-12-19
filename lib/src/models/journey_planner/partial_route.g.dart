// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partial_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartialRoute _$PartialRouteFromJson(Map<String, dynamic> json) {
  return PartialRoute(
    origin: json['origin'] == null
        ? null
        : Point1.fromJson(json['origin'] as Map<String, dynamic>),
    destination: json['destination'] == null
        ? null
        : Point1.fromJson(json['destination'] as Map<String, dynamic>),
    meansOfTransport: json['meansOfTransport'] as String?,
    disruptions: (json['disruptions'] as List<dynamic>?)
        ?.map((e) => Disruption.fromJson(e as Map<String, dynamic>))
        .toList(),
    plannedWorks: (json['plannedWorks'] as List<dynamic>?)
        ?.map((e) => PlannedWork.fromJson(e as Map<String, dynamic>))
        .toList(),
    stopSequence: (json['stopSequence'] as List<dynamic>?)
        ?.map((e) => Point1.fromJson(e as Map<String, dynamic>))
        .toList(),
    type: json['type'] as String?,
    footPathElement: (json['footPathElement'] as List<dynamic>?)
        ?.map((e) => FootPathElement.fromJson(e as Map<String, dynamic>))
        .toList(),
    meansOfTransportOptions: (json['meansOfTransportOptions'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$PartialRouteToJson(PartialRoute instance) =>
    <String, dynamic>{
      'origin': instance.origin,
      'destination': instance.destination,
      'meansOfTransport': instance.meansOfTransport,
      'disruptions': instance.disruptions,
      'plannedWorks': instance.plannedWorks,
      'stopSequence': instance.stopSequence,
      'type': instance.type,
      'footPathElement': instance.footPathElement,
      'meansOfTransportOptions': instance.meansOfTransportOptions,
    };
