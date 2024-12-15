import '../../common/models/prediction_timing.dart';
import 'arrival_departure.dart';

class ArrivalDepartureWithLine extends ArrivalDeparture {
  String? lineId;
  String? lineName;
  String? vehicleId;

  ArrivalDepartureWithLine({
    String? platformName,
    String? destinationNaptanId,
    String? destinationName,
    String? naptanId,
    String? stationName,
    DateTime? estimatedTimeOfArrival,
    DateTime? scheduledTimeOfArrival,
    DateTime? estimatedTimeOfDeparture,
    DateTime? scheduledTimeOfDeparture,
    String? minutesAndSecondsToArrival,
    String? minutesAndSecondsToDeparture,
    String? cause,
    String? departureStatus,
    PredictionTiming? timing,
    this.lineId,
    this.lineName,
    this.vehicleId,
  }) : super(
          platformName: platformName,
          destinationNaptanId: destinationNaptanId,
          destinationName: destinationName,
          naptanId: naptanId,
          stationName: stationName,
          estimatedTimeOfArrival: estimatedTimeOfArrival,
          scheduledTimeOfArrival: scheduledTimeOfArrival,
          estimatedTimeOfDeparture: estimatedTimeOfDeparture,
          scheduledTimeOfDeparture: scheduledTimeOfDeparture,
          minutesAndSecondsToArrival: minutesAndSecondsToArrival,
          minutesAndSecondsToDeparture: minutesAndSecondsToDeparture,
          cause: cause,
          departureStatus: departureStatus,
          timing: timing,
        );

  factory ArrivalDepartureWithLine.fromJson(
    Map<String, dynamic> json,
  ) {
    return ArrivalDepartureWithLine(
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
      minutesAndSecondsToArrival: json['minutesAndSecondsToArrival'] as String?,
      minutesAndSecondsToDeparture:
          json['minutesAndSecondsToDeparture'] as String?,
      cause: json['cause'] as String?,
      departureStatus: json['departureStatus'] as String?,
      timing: json['timing'] == null
          ? null
          : PredictionTiming.fromJson(json['timing'] as Map<String, dynamic>),
      lineId: json['lineId'],
      lineName: json['lineName'],
      vehicleId: json['vehicleId'],
    );
  }

  @override
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
      'lineId': lineId,
      'lineName': lineName,
      'vehicleId': vehicleId,
    };
  }
}
