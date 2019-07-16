// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Prediction _$PredictionFromJson(Map<String, dynamic> json) {
  return Prediction(
      id: json['id'] as String,
      operationType: json['operationType'] as int,
      vehicleId: json['vehicleId'] as String,
      naptanId: json['naptanId'] as String,
      stationName: json['stationName'] as String,
      lineId: json['lineId'] as String,
      lineName: json['lineName'] as String,
      platformName: json['platformName'] as String,
      direction: json['direction'] as String,
      bearing: json['bearing'] as String,
      destinationNaptanId: json['destinationNaptanId'] as String,
      destinationName: json['destinationName'] as String,
      timeToStation: json['timeToStation'] as int,
      currentLocation: json['currentLocation'] as String,
      towards: json['towards'] as String,
      expectedArrival: json['expectedArrival'] == null
          ? null
          : DateTime.parse(json['expectedArrival'] as String),
      timeToLive: json['timeToLive'] == null
          ? null
          : DateTime.parse(json['timeToLive'] as String),
      modeName: json['modeName'] as String,
      timing: json['timing'] == null
          ? null
          : PredictionTiming.fromJson(json['timing'] as Map<String, dynamic>));
}

Map<String, dynamic> _$PredictionToJson(Prediction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'operationType': instance.operationType,
      'vehicleId': instance.vehicleId,
      'naptanId': instance.naptanId,
      'stationName': instance.stationName,
      'lineId': instance.lineId,
      'lineName': instance.lineName,
      'platformName': instance.platformName,
      'direction': instance.direction,
      'bearing': instance.bearing,
      'destinationNaptanId': instance.destinationNaptanId,
      'destinationName': instance.destinationName,
      'timeToStation': instance.timeToStation,
      'currentLocation': instance.currentLocation,
      'towards': instance.towards,
      'expectedArrival': instance.expectedArrival?.toIso8601String(),
      'timeToLive': instance.timeToLive?.toIso8601String(),
      'modeName': instance.modeName,
      'timing': instance.timing
    };
