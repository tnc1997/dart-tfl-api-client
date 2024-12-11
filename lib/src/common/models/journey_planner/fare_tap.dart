import 'package:json_annotation/json_annotation.dart';

import 'fare_tap_details.dart';

part 'fare_tap.g.dart';

@JsonSerializable()
class FareTap {
  String? atcoCode;
  FareTapDetails? tapDetails;

  FareTap({
    this.atcoCode,
    this.tapDetails,
  });

  factory FareTap.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FareTapFromJson(json);

  static List<FareTap> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => FareTap.fromJson(value),
          )
          .toList();

  static Map<String, FareTap> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          FareTap.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$FareTapToJson(this);
}
