import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/prediction_timing.dart';

part 'prediction.g.dart';

@JsonSerializable()
class Prediction {
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
  String? vehicleCDId;
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
    this.vehicleCDId,
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
  ) =>
      _$PredictionFromJson(json);

  static List<Prediction> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Prediction.fromJson(value),
          )
          .toList();

  static Map<String, Prediction> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Prediction.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PredictionToJson(this);
}
