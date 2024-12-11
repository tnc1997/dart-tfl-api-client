import 'package:json_annotation/json_annotation.dart';

import 'line_route_section.dart';
import 'matched_route_sections.dart';
import 'matched_stop.dart';
import 'search_match.dart';

part 'route_search_match.g.dart';

@JsonSerializable()
class RouteSearchMatch extends SearchMatch {
  String? lineId;
  String? mode;
  String? lineName;
  List<LineRouteSection>? lineRouteSection;
  List<MatchedRouteSections>? matchedRouteSections;
  List<MatchedStop>? matchedStops;

  RouteSearchMatch({
    String? id,
    String? url,
    String? name,
    double? lat,
    double? lon,
    this.lineId,
    this.mode,
    this.lineName,
    this.lineRouteSection,
    this.matchedRouteSections,
    this.matchedStops,
  }) : super(
          id: id,
          url: url,
          name: name,
          lat: lat,
          lon: lon,
        );

  factory RouteSearchMatch.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RouteSearchMatchFromJson(json);

  static List<RouteSearchMatch> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RouteSearchMatch.fromJson(value),
          )
          .toList();

  static Map<String, RouteSearchMatch> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RouteSearchMatch.fromJson(value),
        ),
      );

  @override
  Map<String, dynamic> toJson() => _$RouteSearchMatchToJson(this);
}
