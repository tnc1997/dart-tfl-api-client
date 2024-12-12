import 'route_sequence.dart';

class RouteMatch {
  List<RouteSequence>? routeSequence;

  RouteMatch({
    this.routeSequence,
  });

  factory RouteMatch.fromJson(
    Map<String, dynamic> json,
  ) {
    return RouteMatch(
      routeSequence: (json['routeSequence'] as List<dynamic>?)
          ?.map((e) => RouteSequence.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

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

  Map<String, dynamic> toJson() {
    return {
      'routeSequence': routeSequence,
    };
  }
}
