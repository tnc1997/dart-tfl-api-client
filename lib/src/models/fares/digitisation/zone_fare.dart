import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/fares/digitisation/zone_scope.dart';

part 'zone_fare.g.dart';

@JsonSerializable()
class ZoneFare {
  ZoneScope? applicableFareZoneInfo;
  double? fare;

  ZoneFare({
    this.applicableFareZoneInfo,
    this.fare,
  });

  factory ZoneFare.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ZoneFareFromJson(json);

  static List<ZoneFare> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ZoneFare.fromJson(value),
          )
          .toList();

  static Map<String, ZoneFare> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ZoneFare.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ZoneFareToJson(this);
}
