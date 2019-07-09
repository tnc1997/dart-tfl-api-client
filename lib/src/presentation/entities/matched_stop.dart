import './identifier.dart';

class MatchedStop {
  int routeId;

  String parentId;

  String stationId;

  String icsId;

  String topMostParentId;

  String direction;

  String towards;

  List<String> modes;

  String stopType;

  String stopLetter;

  String zone;

  String accessibilitySummary;

  bool hasDisruption;

  List<Identifier> lines;

  bool status;

  String id;

  String url;

  String name;

  double lat;

  double lon;

  MatchedStop();

  @override
  String toString() {
    return 'MatchedStop[routeId=$routeId, parentId=$parentId, stationId=$stationId, icsId=$icsId, topMostParentId=$topMostParentId, direction=$direction, towards=$towards, modes=$modes, stopType=$stopType, stopLetter=$stopLetter, zone=$zone, accessibilitySummary=$accessibilitySummary, hasDisruption=$hasDisruption, lines=$lines, status=$status, id=$id, url=$url, name=$name, lat=$lat, lon=$lon, ]';
  }

  MatchedStop.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    routeId = json['routeId'];
    parentId = json['parentId'];
    stationId = json['stationId'];
    icsId = json['icsId'];
    topMostParentId = json['topMostParentId'];
    direction = json['direction'];
    towards = json['towards'];
    modes = (json['modes'] as List).map((item) => item as String).toList();
    stopType = json['stopType'];
    stopLetter = json['stopLetter'];
    zone = json['zone'];
    accessibilitySummary = json['accessibilitySummary'];
    hasDisruption = json['hasDisruption'];
    lines = Identifier.listFromJson(json['lines']);
    status = json['status'];
    id = json['id'];
    url = json['url'];
    name = json['name'];
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    return {
      'routeId': routeId,
      'parentId': parentId,
      'stationId': stationId,
      'icsId': icsId,
      'topMostParentId': topMostParentId,
      'direction': direction,
      'towards': towards,
      'modes': modes,
      'stopType': stopType,
      'stopLetter': stopLetter,
      'zone': zone,
      'accessibilitySummary': accessibilitySummary,
      'hasDisruption': hasDisruption,
      'lines': lines,
      'status': status,
      'id': id,
      'url': url,
      'name': name,
      'lat': lat,
      'lon': lon
    };
  }

  static List<MatchedStop> listFromJson(List<dynamic> json) {
    return json == null
        ? List<MatchedStop>()
        : json.map((value) => MatchedStop.fromJson(value)).toList();
  }

  static Map<String, MatchedStop> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, MatchedStop>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MatchedStop.fromJson(value));
    }
    return map;
  }
}
