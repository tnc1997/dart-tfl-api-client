import 'map_item.dart';
import 'partial_route.dart';

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
  ) {
    return Route(
      departureDate: json['departureDate'] == null
          ? null
          : DateTime.parse(json['departureDate'] as String),
      arrivalDate: json['arrivalDate'] == null
          ? null
          : DateTime.parse(json['arrivalDate'] as String),
      publicDuration: json['publicDuration'] as String?,
      maps: (json['maps'] as List<dynamic>?)
          ?.map((e) => MapItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      partialRoutes: (json['partialRoutes'] as List<dynamic>?)
          ?.map((e) => PartialRoute.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'departureDate': departureDate?.toIso8601String(),
      'arrivalDate': arrivalDate?.toIso8601String(),
      'publicDuration': publicDuration,
      'maps': maps,
      'partialRoutes': partialRoutes,
    };
  }
}
