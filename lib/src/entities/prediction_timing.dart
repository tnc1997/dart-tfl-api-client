import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'prediction_timing.g.dart';

@JsonSerializable()
class PredictionTiming implements Serializable {
  String countdownServerAdjustment;

  DateTime source;

  DateTime insert;

  DateTime read;

  DateTime sent;

  DateTime received;

  PredictionTiming({
    this.countdownServerAdjustment,
    this.source,
    this.insert,
    this.read,
    this.sent,
    this.received,
  });

  factory PredictionTiming.fromJson(Map<String, dynamic> json) {
    return _$PredictionTimingFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PredictionTimingToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
