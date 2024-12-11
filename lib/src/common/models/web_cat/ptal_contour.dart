import 'package:json_annotation/json_annotation.dart';

part 'ptal_contour.g.dart';

@JsonSerializable()
class PtalContour {
  String? ptalValue;
  String? contourGeometry;

  PtalContour({
    this.ptalValue,
    this.contourGeometry,
  });

  factory PtalContour.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PtalContourFromJson(json);

  static List<PtalContour> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PtalContour.fromJson(value),
          )
          .toList();

  static Map<String, PtalContour> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PtalContour.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PtalContourToJson(this);
}
