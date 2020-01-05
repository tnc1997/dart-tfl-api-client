import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'known_journey.g.dart';

@JsonSerializable()
class KnownJourney implements Serializable {
  String hour;

  String minute;

  int intervalId;

  KnownJourney({
    this.hour,
    this.minute,
    this.intervalId,
  });

  factory KnownJourney.fromJson(Map<String, dynamic> json) {
    return _$KnownJourneyFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$KnownJourneyToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
