import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/route_sequence.dart';

part 'route_match.g.dart';

@JsonSerializable()
class RouteMatch {
  List<RouteSequence>? routeSequence;

  RouteMatch({
    this.routeSequence,
  });

  factory RouteMatch.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RouteMatchFromJson(json);

  static List<RouteMatch> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RouteMatch.fromJson(value),
          )
          .toList();

  static Map<String, RouteMatch> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RouteMatch.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$RouteMatchToJson(this);
}
