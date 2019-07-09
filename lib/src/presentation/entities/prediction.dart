import './prediction_timing.dart';
import '../../internal/serializable.dart';

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

  /// The timestamp for when the prediction was inserted/modified.
  DateTime timestamp;

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

  /// Keep the original timestamp from MongoDB for debugging purposes.
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
    this.timestamp,
    this.timeToStation,
    this.currentLocation,
    this.towards,
    this.expectedArrival,
    this.timeToLive,
    this.modeName,
    this.timing,
  });

  @override
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
      'destinationNaptanId': destinationNaptanId,
      'destinationName': destinationName,
      'timestamp': timestamp == null ? '' : timestamp.toUtc().toIso8601String(),
      'timeToStation': timeToStation,
      'currentLocation': currentLocation,
      'towards': towards,
      'expectedArrival': expectedArrival == null
          ? ''
          : expectedArrival.toUtc().toIso8601String(),
      'timeToLive':
          timeToLive == null ? '' : timeToLive.toUtc().toIso8601String(),
      'modeName': modeName,
      'timing': timing,
    };
  }

  @override
  String toString() {
    return 'Prediction[id=$id, operationType=$operationType, vehicleId=$vehicleId, naptanId=$naptanId, stationName=$stationName, lineId=$lineId, lineName=$lineName, platformName=$platformName, direction=$direction, bearing=$bearing, destinationNaptanId=$destinationNaptanId, destinationName=$destinationName, timestamp=$timestamp, timeToStation=$timeToStation, currentLocation=$currentLocation, towards=$towards, expectedArrival=$expectedArrival, timeToLive=$timeToLive, modeName=$modeName, timing=$timing, ]';
  }

  Prediction.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    id = json['id'];
    operationType = json['operationType'];
    vehicleId = json['vehicleId'];
    naptanId = json['naptanId'];
    stationName = json['stationName'];
    lineId = json['lineId'];
    lineName = json['lineName'];
    platformName = json['platformName'];
    direction = json['direction'];
    bearing = json['bearing'];
    destinationNaptanId = json['destinationNaptanId'];
    destinationName = json['destinationName'];
    timestamp =
        json['timestamp'] == null ? null : DateTime.parse(json['timestamp']);
    timeToStation = json['timeToStation'];
    currentLocation = json['currentLocation'];
    towards = json['towards'];
    expectedArrival = json['expectedArrival'] == null
        ? null
        : DateTime.parse(json['expectedArrival']);
    timeToLive =
        json['timeToLive'] == null ? null : DateTime.parse(json['timeToLive']);
    modeName = json['modeName'];
    timing = PredictionTiming.fromJson(json['timing']);
  }

  static List<Prediction> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Prediction>()
        : json.map((value) => Prediction.fromJson(value)).toList();
  }

  static Map<String, Prediction> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Prediction>()
        : json.map((key, value) => MapEntry(key, Prediction.fromJson(value)));
  }
}
