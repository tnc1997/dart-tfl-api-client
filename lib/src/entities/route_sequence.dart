import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/matched_stop.dart';
import 'package:tfl_api_client/src/entities/ordered_route.dart';
import 'package:tfl_api_client/src/entities/stop_point_sequence.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

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
