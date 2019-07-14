import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'line_route_section.dart';
import 'matched_route_sections.dart';
import 'matched_stop.dart';

part 'route_search_match.g.dart';

@JsonSerializable()
class RouteSearchMatch implements Serializable {
  String lineId;

  String mode;

  String lineName;

  List<LineRouteSection> lineRouteSection;

  List<MatchedRouteSections> matchedRouteSections;

  List<MatchedStop> matchedStops;

  String id;

  String url;

  String name;

  double lat;

  double lon;

  RouteSearchMatch({
    this.lineId,
    this.mode,
    this.lineName,
    this.lineRouteSection,
    this.matchedRouteSections,
    this.matchedStops,
    this.id,
    this.url,
    this.name,
    this.lat,
    this.lon,
  });

  factory RouteSearchMatch.fromJson(Map<String, dynamic> json) {
    return _$RouteSearchMatchFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$RouteSearchMatchToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
