import 'package:json_annotation/json_annotation.dart';

import 'prediction_timing.dart';

part 'arrival_departure.g.dart';

@JsonSerializable()
class ArrivalDeparture {
  String? platformName;
  String? destinationNaptanId;
  String? destinationName;
  String? naptanId;
  String? stationName;
  DateTime? estimatedTimeOfArrival;
  DateTime? scheduledTimeOfArrival;
  DateTime? estimatedTimeOfDeparture;
  DateTime? scheduledTimeOfDeparture;
  String? minutesAndSecondsToArrival;
  String? minutesAndSecondsToDeparture;
  String? cause;
  String? departureStatus;
  PredictionTiming? timing;

  ArrivalDeparture({
    this.platformName,
    this.destinationNaptanId,
    this.destinationName,
    this.naptanId,
    this.stationName,
    this.estimatedTimeOfArrival,
    this.scheduledTimeOfArrival,
    this.estimatedTimeOfDeparture,
    this.scheduledTimeOfDeparture,
    this.minutesAndSecondsToArrival,
    this.minutesAndSecondsToDeparture,
    this.cause,
    this.departureStatus,
    this.timing,
  });

  factory ArrivalDeparture.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ArrivalDepartureFromJson(json);

  static List<ArrivalDeparture> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ArrivalDeparture.fromJson(value),
          )
          .toList();

  static Map<String, ArrivalDeparture> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ArrivalDeparture.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ArrivalDepartureToJson(this);
}
