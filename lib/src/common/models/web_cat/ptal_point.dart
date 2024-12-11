import 'package:json_annotation/json_annotation.dart';

part 'ptal_point.g.dart';

@JsonSerializable()
class PtalPoint {
  String? ptalValue;
  double? latitude;
  double? longitude;

  PtalPoint({
    this.ptalValue,
    this.latitude,
    this.longitude,
  });

  factory PtalPoint.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PtalPointFromJson(json);

  static List<PtalPoint> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PtalPoint.fromJson(value),
          )
          .toList();

  static Map<String, PtalPoint> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PtalPoint.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PtalPointToJson(this);
}
