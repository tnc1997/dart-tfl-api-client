import '../../common/models/prediction_timing.dart';
import 'arrival_departure_with_line.dart';

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
  ) {
    switch (json['\$type']) {
      case 'Tfl.Api.Presentation.Entities.ArrivalDepartureWithLine, Tfl.Api.Presentation.Entities':
        return ArrivalDepartureWithLine.fromJson(json);
      default:
        return ArrivalDeparture(
          platformName: json['platformName'] as String?,
          destinationNaptanId: json['destinationNaptanId'] as String?,
          destinationName: json['destinationName'] as String?,
          naptanId: json['naptanId'] as String?,
          stationName: json['stationName'] as String?,
          estimatedTimeOfArrival: json['estimatedTimeOfArrival'] == null
              ? null
              : DateTime.parse(json['estimatedTimeOfArrival'] as String),
          scheduledTimeOfArrival: json['scheduledTimeOfArrival'] == null
              ? null
              : DateTime.parse(json['scheduledTimeOfArrival'] as String),
          estimatedTimeOfDeparture: json['estimatedTimeOfDeparture'] == null
              ? null
              : DateTime.parse(json['estimatedTimeOfDeparture'] as String),
          scheduledTimeOfDeparture: json['scheduledTimeOfDeparture'] == null
              ? null
              : DateTime.parse(json['scheduledTimeOfDeparture'] as String),
          minutesAndSecondsToArrival:
              json['minutesAndSecondsToArrival'] as String?,
          minutesAndSecondsToDeparture:
              json['minutesAndSecondsToDeparture'] as String?,
          cause: json['cause'] as String?,
          departureStatus: json['departureStatus'] as String?,
          timing: json['timing'] == null
              ? null
              : PredictionTiming.fromJson(
                  json['timing'] as Map<String, dynamic>),
        );
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'platformName': platformName,
      'destinationNaptanId': destinationNaptanId,
      'destinationName': destinationName,
      'naptanId': naptanId,
      'stationName': stationName,
      'estimatedTimeOfArrival': estimatedTimeOfArrival?.toIso8601String(),
      'scheduledTimeOfArrival': scheduledTimeOfArrival?.toIso8601String(),
      'estimatedTimeOfDeparture': estimatedTimeOfDeparture?.toIso8601String(),
      'scheduledTimeOfDeparture': scheduledTimeOfDeparture?.toIso8601String(),
      'minutesAndSecondsToArrival': minutesAndSecondsToArrival,
      'minutesAndSecondsToDeparture': minutesAndSecondsToDeparture,
      'cause': cause,
      'departureStatus': departureStatus,
      'timing': timing,
    };
  }
}
