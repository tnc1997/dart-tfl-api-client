import 'package:json_annotation/json_annotation.dart';

part 'prediction_timing.g.dart';

@JsonSerializable()
class PredictionTiming {
  String? countdownServerAdjustment;
  DateTime? source;
  DateTime? insert;
  DateTime? read;
  DateTime? sent;
  DateTime? received;

  PredictionTiming({
    this.countdownServerAdjustment,
    this.source,
    this.insert,
    this.read,
    this.sent,
    this.received,
  });

  factory PredictionTiming.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PredictionTimingFromJson(json);

  static List<PredictionTiming> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PredictionTiming.fromJson(value),
          )
          .toList();

  static Map<String, PredictionTiming> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PredictionTiming.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PredictionTimingToJson(this);
}
