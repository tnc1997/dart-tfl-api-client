import './route_search_match.dart';
import '../../internal/serializable.dart';

class RouteSearchResponse implements Serializable {
  String input;

  List<RouteSearchMatch> searchMatches;

  RouteSearchResponse({
    this.input,
    this.searchMatches,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'input': input,
      'searchMatches': searchMatches,
    };
  }

  @override
  String toString() {
    return 'RouteSearchResponse[input=$input, searchMatches=$searchMatches]';
  }

  RouteSearchResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    input = json['input'];
    searchMatches = RouteSearchMatch.listFromJson(json['searchMatches']);
  }

  static List<RouteSearchResponse> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<RouteSearchResponse>()
        : json.map((value) => RouteSearchResponse.fromJson(value)).toList();
  }

  static Map<String, RouteSearchResponse> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, RouteSearchResponse>()
        : json.map(
            (key, value) => MapEntry(key, RouteSearchResponse.fromJson(value)));
  }
}
