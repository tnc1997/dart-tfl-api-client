import './route_search_match.dart';

class RouteSearchResponse {
  String input;

  List<RouteSearchMatch> searchMatches;

  RouteSearchResponse();

  @override
  String toString() {
    return 'RouteSearchResponse[input=$input, searchMatches=$searchMatches, ]';
  }

  RouteSearchResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    input = json['input'];
    searchMatches = RouteSearchMatch.listFromJson(json['searchMatches']);
  }

  Map<String, dynamic> toJson() {
    return {'input': input, 'searchMatches': searchMatches};
  }

  static List<RouteSearchResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<RouteSearchResponse>()
        : json.map((value) => new RouteSearchResponse.fromJson(value)).toList();
  }

  static Map<String, RouteSearchResponse> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RouteSearchResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new RouteSearchResponse.fromJson(value));
    }
    return map;
  }
}
