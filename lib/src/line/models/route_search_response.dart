import 'route_search_match.dart';

class RouteSearchResponse {
  String? input;
  List<RouteSearchMatch>? searchMatches;

  RouteSearchResponse({
    this.input,
    this.searchMatches,
  });

  factory RouteSearchResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return RouteSearchResponse(
      input: json['input'] as String?,
      searchMatches: (json['searchMatches'] as List<dynamic>?)
          ?.map((e) => RouteSearchMatch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  static List<RouteSearchResponse> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RouteSearchResponse.fromJson(value),
          )
          .toList();

  static Map<String, RouteSearchResponse> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RouteSearchResponse.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'input': input,
      'searchMatches': searchMatches,
    };
  }
}
