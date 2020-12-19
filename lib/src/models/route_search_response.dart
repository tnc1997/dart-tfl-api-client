import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/route_search_match.dart';

part 'route_search_response.g.dart';

@JsonSerializable()
class RouteSearchResponse {
  String? input;
  List<RouteSearchMatch>? searchMatches;

  RouteSearchResponse({
    this.input,
    this.searchMatches,
  });

  factory RouteSearchResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RouteSearchResponseFromJson(json);

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

  Map<String, dynamic> toJson() => _$RouteSearchResponseToJson(this);
}
