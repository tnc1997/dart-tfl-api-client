import 'package:json_annotation/json_annotation.dart';

import 'map_item.dart';
import 'partial_route.dart';

part 'route.g.dart';

@JsonSerializable()
class Route {
  DateTime? departureDate;
  DateTime? arrivalDate;
  String? publicDuration;
  List<MapItem>? maps;
  List<PartialRoute>? partialRoutes;

  Route({
    this.departureDate,
    this.arrivalDate,
    this.publicDuration,
    this.maps,
    this.partialRoutes,
  });

  factory Route.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RouteFromJson(json);

  static List<Route> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Route.fromJson(value),
          )
          .toList();

  static Map<String, Route> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Route.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$RouteToJson(this);
}
