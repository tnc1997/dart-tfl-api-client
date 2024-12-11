// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arrival_departure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArrivalDeparture _$ArrivalDepartureFromJson(Map<String, dynamic> json) {
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
    minutesAndSecondsToArrival: json['minutesAndSecondsToArrival'] as String?,
    minutesAndSecondsToDeparture:
        json['minutesAndSecondsToDeparture'] as String?,
    cause: json['cause'] as String?,
    departureStatus: json['departureStatus'] as String?,
    timing: json['timing'] == null
        ? null
        : PredictionTiming.fromJson(json['timing'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ArrivalDepartureToJson(ArrivalDeparture instance) =>
    <String, dynamic>{
      'platformName': instance.platformName,
      'destinationNaptanId': instance.destinationNaptanId,
      'destinationName': instance.destinationName,
      'naptanId': instance.naptanId,
      'stationName': instance.stationName,
      'estimatedTimeOfArrival':
          instance.estimatedTimeOfArrival?.toIso8601String(),
      'scheduledTimeOfArrival':
          instance.scheduledTimeOfArrival?.toIso8601String(),
      'estimatedTimeOfDeparture':
          instance.estimatedTimeOfDeparture?.toIso8601String(),
      'scheduledTimeOfDeparture':
          instance.scheduledTimeOfDeparture?.toIso8601String(),
      'minutesAndSecondsToArrival': instance.minutesAndSecondsToArrival,
      'minutesAndSecondsToDeparture': instance.minutesAndSecondsToDeparture,
      'cause': instance.cause,
      'departureStatus': instance.departureStatus,
      'timing': instance.timing,
    };
