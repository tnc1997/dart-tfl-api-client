import 'line_route_section.dart';
import 'matched_route_sections.dart';
import 'matched_stop.dart';

class RouteSearchMatch {
  String? lineId;
  String? mode;
  String? lineName;
  List<LineRouteSection>? lineRouteSection;
  List<MatchedRouteSections>? matchedRouteSections;
  List<MatchedStop>? matchedStops;
  String? id;
  String? url;
  String? name;
  double? lat;
  double? lon;

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

  factory RouteSearchMatch.fromJson(
    Map<String, dynamic> json,
  ) {
    return RouteSearchMatch(
      lineId: json['lineId'] as String?,
      mode: json['mode'] as String?,
      lineName: json['lineName'] as String?,
      lineRouteSection: (json['lineRouteSection'] as List<dynamic>?)
          ?.map((e) => LineRouteSection.fromJson(e as Map<String, dynamic>))
          .toList(),
      matchedRouteSections: (json['matchedRouteSections'] as List<dynamic>?)
          ?.map((e) => MatchedRouteSections.fromJson(e as Map<String, dynamic>))
          .toList(),
      matchedStops: (json['matchedStops'] as List<dynamic>?)
          ?.map((e) => MatchedStop.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
    );
  }

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

  Map<String, dynamic> toJson() {
    return {
      'lineId': lineId,
      'mode': mode,
      'lineName': lineName,
      'lineRouteSection': lineRouteSection,
      'matchedRouteSections': matchedRouteSections,
      'matchedStops': matchedStops,
      'id': id,
      'url': url,
      'name': name,
      'lat': lat,
      'lon': lon,
    };
  }
}
