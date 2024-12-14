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

  Map<String, dynamic> toJson() {
    return {
      'routeSequence': routeSequence,
    };
  }
}
