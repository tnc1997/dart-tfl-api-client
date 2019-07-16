import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'prediction_timing.dart';

part 'prediction.g.dart';

@JsonSerializable()
class Prediction implements Serializable {
  String id;

  /// The type of the operation (1: is new or has been updated, 2: should be deleted from any client cache).
  int operationType;

  /// The actual vehicle in transit (for train modes, the leading car of the rolling set).
  String vehicleId;

  /// The identifier for the prediction.
  String naptanId;

  /// The station name.
  String stationName;

  /// The unique identifier for the line.
  String lineId;

  /// The line name.
  String lineName;

  /// The platform name (for buses, this is the stop letter).
  String platformName;

  /// The direction (unified to inbound/outbound).
  String direction;

  /// The bearing (between 0 to 359).
  String bearing;

  /// The NaPTAN identifier for the prediction's destination.
  String destinationNaptanId;

  /// The name of the destination.
  String destinationName;

  /// The prediction of the time to station in seconds.
  int timeToStation;

  /// The current location of the vehicle.
  String currentLocation;

  /// The routing information or other descriptive text about the path of the vehicle towards the destination.
  String towards;

  /// The expected arrival time of the vehicle at the stop/station.
  DateTime expectedArrival;

  /// The expiry time for the prediction.
  DateTime timeToLive;

  /// The mode name of the station/line that the prediction relates to.
  String modeName;

  /// The original timestamp from MongoDB for debugging purposes.
  PredictionTiming timing;

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
    this.destinationNaptanId,
    this.destinationName,
    this.timeToStation,
    this.currentLocation,
    this.towards,
    this.expectedArrival,
    this.timeToLive,
    this.modeName,
    this.timing,
  });

  factory Prediction.fromJson(Map<String, dynamic> json) {
    return _$PredictionFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PredictionToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
