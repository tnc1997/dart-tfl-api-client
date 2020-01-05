import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'line_route_section.g.dart';

@JsonSerializable()
class LineRouteSection implements Serializable {
  int routeId;

  String direction;

  String destination;

  String fromStation;

  String toStation;

  String serviceType;

  String vehicleDestinationText;

  LineRouteSection({
    this.routeId,
    this.direction,
    this.destination,
    this.fromStation,
    this.toStation,
    this.serviceType,
    this.vehicleDestinationText,
  });

  factory LineRouteSection.fromJson(Map<String, dynamic> json) {
    return _$LineRouteSectionFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$LineRouteSectionToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
