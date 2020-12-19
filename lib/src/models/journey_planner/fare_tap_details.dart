import 'package:json_annotation/json_annotation.dart';

part 'fare_tap_details.g.dart';

@JsonSerializable()
class FareTapDetails {
  String? modeType;
  String? validationType;
  String? hostDeviceType;
  String? busRouteId;
  int? nationalLocationCode;
  DateTime? tapTimestamp;

  FareTapDetails({
    this.modeType,
    this.validationType,
    this.hostDeviceType,
    this.busRouteId,
    this.nationalLocationCode,
    this.tapTimestamp,
  });

  factory FareTapDetails.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FareTapDetailsFromJson(json);

  static List<FareTapDetails> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => FareTapDetails.fromJson(value),
          )
          .toList();

  static Map<String, FareTapDetails> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          FareTapDetails.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$FareTapDetailsToJson(this);
}
