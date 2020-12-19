import 'package:json_annotation/json_annotation.dart';

part 'line_route_section.g.dart';

@JsonSerializable()
class LineRouteSection {
  int? routeId;
  String? direction;
  String? destination;
  String? fromStation;
  String? toStation;
  String? serviceType;
  String? vehicleDestinationText;

  LineRouteSection({
    this.routeId,
    this.direction,
    this.destination,
    this.fromStation,
    this.toStation,
    this.serviceType,
    this.vehicleDestinationText,
  });

  factory LineRouteSection.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LineRouteSectionFromJson(json);

  static List<LineRouteSection> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => LineRouteSection.fromJson(value),
          )
          .toList();

  static Map<String, LineRouteSection> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          LineRouteSection.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$LineRouteSectionToJson(this);
}
