import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'route_search_match.dart';

part 'route_search_response.g.dart';

@JsonSerializable()
class RouteSearchResponse implements Serializable {
  String input;

  List<RouteSearchMatch> searchMatches;

  RouteSearchResponse({
    this.input,
    this.searchMatches,
  });

  factory RouteSearchResponse.fromJson(Map<String, dynamic> json) {
    return _$RouteSearchResponseFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$RouteSearchResponseToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
