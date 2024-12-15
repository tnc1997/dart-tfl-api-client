import 'identifiable.dart';
import 'identifier.dart';
import 'prediction_timing.dart';

class Prediction implements Identifiable {
  String? id;
  int? operationType;
  String? vehicleId;
  String? naptanId;
  String? stationName;
  String? lineId;
  String? lineName;
  String? platformName;
  String? direction;
  String? bearing;
  String? visitNumber;
  String? tripId;
  String? vehicleCdId;
  String? destinationNaptanId;
  String? destinationName;
  DateTime? timestamp;
  int? timeToStation;
  String? currentLocation;
  String? towards;
  DateTime? expectedArrival;
  DateTime? timeToLive;
  String? modeName;
  DateTime? serverTimestamp;
  PredictionTiming? timing;

  Prediction({
    this.id,
    this.operationType,
    this.vehicleId,
    this.naptanId,
    this.stationName,
    this.lineId,
    this.lineName,
    this.platformName,
    this.direction,
    this.bearing,
    this.visitNumber,
    this.tripId,
    this.vehicleCdId,
    this.destinationNaptanId,
    this.destinationName,
    this.timestamp,
    this.timeToStation,
    this.currentLocation,
    this.towards,
    this.expectedArrival,
    this.timeToLive,
    this.modeName,
    this.serverTimestamp,
    this.timing,
  });

  factory Prediction.fromJson(
    Map<String, dynamic> json,
  ) {
    return Prediction(
      id: json['id'] as String?,
      operationType: (json['operationType'] as num?)?.toInt(),
      vehicleId: json['vehicleId'] as String?,
      naptanId: json['naptanId'] as String?,
      stationName: json['stationName'] as String?,
      lineId: json['lineId'] as String?,
      lineName: json['lineName'] as String?,
      platformName: json['platformName'] as String?,
      direction: json['direction'] as String?,
      bearing: json['bearing'] as String?,
      visitNumber: json['visitNumber'] as String?,
      tripId: json['tripId'] as String?,
      vehicleCdId: json['vehicleCdId'] as String?,
      destinationNaptanId: json['destinationNaptanId'] as String?,
      destinationName: json['destinationName'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      timeToStation: (json['timeToStation'] as num?)?.toInt(),
      currentLocation: json['currentLocation'] as String?,
      towards: json['towards'] as String?,
      expectedArrival: json['expectedArrival'] == null
          ? null
          : DateTime.parse(json['expectedArrival'] as String),
      timeToLive: json['timeToLive'] == null
          ? null
          : DateTime.parse(json['timeToLive'] as String),
      modeName: json['modeName'] as String?,
      serverTimestamp: json['serverTimestamp'] == null
          ? null
          : DateTime.parse(json['serverTimestamp'] as String),
      timing: json['timing'] == null
          ? null
          : PredictionTiming.fromJson(json['timing'] as Map<String, dynamic>),
    );
  }

  @override
  Identifier toIdentifier() {
    return Identifier(
      id: naptanId,
      name: '$stationName - $lineName',
      uri: '/line/$lineId/arrivals/$naptanId',
      type: 'Prediction',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'operationType': operationType,
      'vehicleId': vehicleId,
      'naptanId': naptanId,
      'stationName': stationName,
      'lineId': lineId,
      'lineName': lineName,
      'platformName': platformName,
      'direction': direction,
      'bearing': bearing,
      'visitNumber': visitNumber,
      'tripId': tripId,
      'vehicleCdId': vehicleCdId,
      'destinationNaptanId': destinationNaptanId,
      'destinationName': destinationName,
      'timestamp': timestamp?.toIso8601String(),
      'timeToStation': timeToStation,
      'currentLocation': currentLocation,
      'towards': towards,
      'expectedArrival': expectedArrival?.toIso8601String(),
      'timeToLive': timeToLive?.toIso8601String(),
      'modeName': modeName,
      'serverTimestamp': serverTimestamp?.toIso8601String(),
      'timing': timing,
    };
  }
}
