import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'matched_stop.dart';
import 'ordered_route.dart';
import 'stop_point_sequence.dart';

part 'route_sequence.g.dart';

@JsonSerializable()
class RouteSequence implements Serializable {
  String lineId;

  String lineName;

  String direction;

  bool isOutboundOnly;

  String mode;

  List<String> lineStrings;

  List<MatchedStop> stations;

  List<StopPointSequence> stopPointSequences;

  List<OrderedRoute> orderedLineRoutes;

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

  factory RouteSequence.fromJson(Map<String, dynamic> json) {
    return _$RouteSequenceFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$RouteSequenceToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
