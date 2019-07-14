import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'charge_connector_occupancy.g.dart';

@JsonSerializable()
class ChargeConnectorOccupancy implements Serializable {
  int id;

  String sourceSystemPlaceId;

  String status;

  ChargeConnectorOccupancy({
    this.id,
    this.sourceSystemPlaceId,
    this.status,
  });

  factory ChargeConnectorOccupancy.fromJson(Map<String, dynamic> json) {
    return _$ChargeConnectorOccupancyFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$ChargeConnectorOccupancyToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
