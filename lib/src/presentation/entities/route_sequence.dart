import './matched_stop.dart';
import './ordered_route.dart';
import './stop_point_sequence.dart';

class RouteSequence {
  String lineId;

  String lineName;

  String direction;

  bool isOutboundOnly;

  String mode;

  List<String> lineStrings;

  List<MatchedStop> stations;

  List<StopPointSequence> stopPointSequences;

  List<OrderedRoute> orderedLineRoutes;

  RouteSequence();

  @override
  String toString() {
    return 'RouteSequence[lineId=$lineId, lineName=$lineName, direction=$direction, isOutboundOnly=$isOutboundOnly, mode=$mode, lineStrings=$lineStrings, stations=$stations, stopPointSequences=$stopPointSequences, orderedLineRoutes=$orderedLineRoutes, ]';
  }

  RouteSequence.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lineId = json['lineId'];
    lineName = json['lineName'];
    direction = json['direction'];
    isOutboundOnly = json['isOutboundOnly'];
    mode = json['mode'];
    lineStrings =
        (json['lineStrings'] as List).map((item) => item as String).toList();
    stations = MatchedStop.listFromJson(json['stations']);
    stopPointSequences =
        StopPointSequence.listFromJson(json['stopPointSequences']);
    orderedLineRoutes = OrderedRoute.listFromJson(json['orderedLineRoutes']);
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
      'orderedLineRoutes': orderedLineRoutes
    };
  }

  static List<RouteSequence> listFromJson(List<dynamic> json) {
    return json == null
        ? List<RouteSequence>()
        : json.map((value) => RouteSequence.fromJson(value)).toList();
  }

  static Map<String, RouteSequence> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, RouteSequence>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = RouteSequence.fromJson(value));
    }
    return map;
  }
}
