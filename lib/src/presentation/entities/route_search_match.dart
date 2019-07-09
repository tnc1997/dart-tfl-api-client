import './line_route_section.dart';
import './matched_route_sections.dart';
import './matched_stop.dart';
import '../../internal/serializable.dart';

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

  @override
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

  @override
  String toString() {
    return 'RouteSearchMatch[lineId=$lineId, mode=$mode, lineName=$lineName, lineRouteSection=$lineRouteSection, matchedRouteSections=$matchedRouteSections, matchedStops=$matchedStops, id=$id, url=$url, name=$name, lat=$lat, lon=$lon, ]';
  }

  RouteSearchMatch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    lineId = json['lineId'];
    mode = json['mode'];
    lineName = json['lineName'];
    lineRouteSection = LineRouteSection.listFromJson(json['lineRouteSection']);
    matchedRouteSections =
        MatchedRouteSections.listFromJson(json['matchedRouteSections']);
    matchedStops = MatchedStop.listFromJson(json['matchedStops']);
    id = json['id'];
    url = json['url'];
    name = json['name'];
    lat = json['lat'];
    lon = json['lon'];
  }

  static List<RouteSearchMatch> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<RouteSearchMatch>()
        : json.map((value) => RouteSearchMatch.fromJson(value)).toList();
  }

  static Map<String, RouteSearchMatch> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, RouteSearchMatch>()
        : json.map(
            (key, value) => MapEntry(key, RouteSearchMatch.fromJson(value)));
  }
}
