import 'package:json_annotation/json_annotation.dart';

import 'fare_bounds.dart';

part 'river_route.g.dart';

@JsonSerializable()
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
  ) =>
      _$RiverRouteFromJson(json);

  static List<RiverRoute> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RiverRoute.fromJson(value),
          )
          .toList();

  static Map<String, RiverRoute> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RiverRoute.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$RiverRouteToJson(this);
}
