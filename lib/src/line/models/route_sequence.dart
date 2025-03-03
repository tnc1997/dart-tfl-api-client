﻿import '../../common/models/identifiable.dart';
import '../../common/models/identifier.dart';
import '../../common/models/matched_stop.dart';
import 'ordered_route.dart';
import 'stop_point_sequence.dart';

class RouteSequence implements Identifiable {
  String? lineId;
  String? lineName;
  String? direction;
  bool? isOutboundOnly;
  String? mode;
  List<String>? lineStrings;
  List<MatchedStop>? stations;
  List<StopPointSequence>? stopPointSequences;
  List<OrderedRoute>? orderedLineRoutes;

  RouteSequence({
    this.lineId,
    this.lineName,
    this.direction,
    this.isOutboundOnly,
    this.mode,
    this.lineStrings,
    this.stations,
    this.stopPointSequences,
    this.orderedLineRoutes,
  });

  factory RouteSequence.fromJson(
    Map<String, dynamic> json,
  ) {
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

  @override
  Identifier toIdentifier() {
    return Identifier(
      id: lineId,
      uri: '/line/$lineId/route/sequence/$direction',
      type: 'RouteSequence',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lineId': lineId,
      'lineName': lineName,
      'direction': direction,
      'isOutboundOnly': isOutboundOnly,
      'mode': mode,
      'lineStrings': lineStrings,
      'stations': stations,
      'stopPointSequences': stopPointSequences,
      'orderedLineRoutes': orderedLineRoutes,
    };
  }
}
