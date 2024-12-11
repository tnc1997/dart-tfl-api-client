import 'package:json_annotation/json_annotation.dart';

import 'matched_stop.dart';
import 'ordered_route.dart';
import 'stop_point_sequence.dart';

part 'route_sequence.g.dart';

@JsonSerializable()
class RouteSequence {
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
  ) =>
      _$RouteSequenceFromJson(json);

  static List<RouteSequence> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RouteSequence.fromJson(value),
          )
          .toList();

  static Map<String, RouteSequence> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RouteSequence.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$RouteSequenceToJson(this);
}
