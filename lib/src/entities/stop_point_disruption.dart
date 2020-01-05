import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'stop_point_disruption.g.dart';

@JsonSerializable()
class StopPointDisruption implements Serializable {
  String atcoCode;

  DateTime fromDate;

  DateTime toDate;

  String description;

  String commonName;

  String type;

  String mode;

  String stationAtcoCode;

  String appearance;

  String additionalInformation;

  StopPointDisruption({
    this.atcoCode,
    this.fromDate,
    this.toDate,
    this.description,
    this.commonName,
    this.type,
    this.mode,
    this.stationAtcoCode,
    this.appearance,
    this.additionalInformation,
  });

  factory StopPointDisruption.fromJson(Map<String, dynamic> json) {
    return _$StopPointDisruptionFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$StopPointDisruptionToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
