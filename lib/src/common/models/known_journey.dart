import 'package:json_annotation/json_annotation.dart';

part 'known_journey.g.dart';

@JsonSerializable()
class KnownJourney {
  String? hour;
  String? minute;
  int? intervalId;

  KnownJourney({
    this.hour,
    this.minute,
    this.intervalId,
  });

  factory KnownJourney.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$KnownJourneyFromJson(json);

  static List<KnownJourney> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => KnownJourney.fromJson(value),
          )
          .toList();

  static Map<String, KnownJourney> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          KnownJourney.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$KnownJourneyToJson(this);
}
