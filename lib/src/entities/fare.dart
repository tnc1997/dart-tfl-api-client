import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'fare.g.dart';

@JsonSerializable()
class Fare implements Serializable {
  int id;

  String passengerType;

  DateTime validFrom;

  DateTime validUntil;

  String ticketTime;

  String ticketType;

  String cost;

  double cap;

  String description;

  String zone;

  String mode;

  Fare({
    this.id,
    this.passengerType,
    this.validFrom,
    this.validUntil,
    this.ticketTime,
    this.ticketType,
    this.cost,
    this.cap,
    this.description,
    this.zone,
    this.mode,
  });

  factory Fare.fromJson(Map<String, dynamic> json) {
    return _$FareFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$FareToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
