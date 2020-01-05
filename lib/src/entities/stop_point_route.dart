import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'stop_point_route.g.dart';

@JsonSerializable()
class StopPointRoute implements Serializable {
  String naptanId;

  String lineId;

  String mode;

  DateTime validFrom;

  DateTime validTo;

  String direction;

  String routeSectionName;

  String lineString;

  bool isActive;

  String serviceType;

  String vehicleDestinationText;

  String destinationName;

  StopPointRoute({
    this.naptanId,
    this.lineId,
    this.mode,
    this.validFrom,
    this.validTo,
    this.direction,
    this.routeSectionName,
    this.lineString,
    this.isActive,
    this.serviceType,
    this.vehicleDestinationText,
    this.destinationName,
  });

  factory StopPointRoute.fromJson(Map<String, dynamic> json) {
    return _$StopPointRouteFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$StopPointRouteToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
