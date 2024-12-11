import 'package:json_annotation/json_annotation.dart';

part 'fare_station.g.dart';

@JsonSerializable()
class FareStation {
  String? atcoCode;
  String? commonName;
  String? fareCategory;

  FareStation({
    this.atcoCode,
    this.commonName,
    this.fareCategory,
  });

  factory FareStation.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FareStationFromJson(json);

  static List<FareStation> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => FareStation.fromJson(value),
          )
          .toList();

  static Map<String, FareStation> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          FareStation.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$FareStationToJson(this);
}
