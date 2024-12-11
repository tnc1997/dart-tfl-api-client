import 'package:json_annotation/json_annotation.dart';

part 'charge_connector_occupancy.g.dart';

@JsonSerializable()
class ChargeConnectorOccupancy {
  int? id;
  String? sourceSystemPlaceId;
  String? status;

  ChargeConnectorOccupancy({
    this.id,
    this.sourceSystemPlaceId,
    this.status,
  });

  factory ChargeConnectorOccupancy.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ChargeConnectorOccupancyFromJson(json);

  static List<ChargeConnectorOccupancy> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ChargeConnectorOccupancy.fromJson(value),
          )
          .toList();

  static Map<String, ChargeConnectorOccupancy> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ChargeConnectorOccupancy.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ChargeConnectorOccupancyToJson(this);
}
