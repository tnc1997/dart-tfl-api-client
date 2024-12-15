import 'fare_bounds.dart';

class RiverRoute {
  String? routeDescription;
  String? routeCode;
  String? operator;
  List<FareBounds>? routes;

  RiverRoute({
    this.routeDescription,
    this.routeCode,
    this.operator,
    this.routes,
  });

  factory RiverRoute.fromJson(
    Map<String, dynamic> json,
  ) {
    return RiverRoute(
      routeDescription: json['routeDescription'] as String?,
      routeCode: json['routeCode'] as String?,
      operator: json['operator'] as String?,
      routes: (json['routes'] as List<dynamic>?)
          ?.map((e) => FareBounds.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'routeDescription': routeDescription,
        'routeCode': routeCode,
        'operator': operator,
        'routes': routes,
      };
}
