import '../../common/models/route_search_match.dart';

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

  Map<String, dynamic> toJson() {
    return {
      'input': input,
      'searchMatches': searchMatches,
    };
  }
}
