import 'package:json_annotation/json_annotation.dart';

part 'point.g.dart';

@JsonSerializable()
class Point2 {
  double? lat;
  double? lon;

  Point2({
    this.lat,
    this.lon,
  });

  factory Point2.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$Point2FromJson(json);

  static List<Point2> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Point2.fromJson(value),
          )
          .toList();

  static Map<String, Point2> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Point2.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$Point2ToJson(this);
}
