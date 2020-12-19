// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_sequence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteSequence _$RouteSequenceFromJson(Map<String, dynamic> json) {
  return RouteSequence(
    lineId: json['lineId'] as String?,
    lineName: json['lineName'] as String?,
    direction: json['direction'] as String?,
    isOutboundOnly: json['isOutboundOnly'] as bool?,
    mode: json['mode'] as String?,
    lineStrings: (json['lineStrings'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    stations: (json['stations'] as List<dynamic>?)
        ?.map((e) => MatchedStop.fromJson(e as Map<String, dynamic>))
        .toList(),
    stopPointSequences: (json['stopPointSequences'] as List<dynamic>?)
        ?.map((e) => StopPointSequence.fromJson(e as Map<String, dynamic>))
        .toList(),
    orderedLineRoutes: (json['orderedLineRoutes'] as List<dynamic>?)
        ?.map((e) => OrderedRoute.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$RouteSequenceToJson(RouteSequence instance) =>
    <String, dynamic>{
      'lineId': instance.lineId,
      'lineName': instance.lineName,
      'direction': instance.direction,
      'isOutboundOnly': instance.isOutboundOnly,
      'mode': instance.mode,
      'lineStrings': instance.lineStrings,
      'stations': instance.stations,
      'stopPointSequences': instance.stopPointSequences,
      'orderedLineRoutes': instance.orderedLineRoutes,
    };
