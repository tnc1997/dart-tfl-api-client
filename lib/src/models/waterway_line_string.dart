import 'package:json_annotation/json_annotation.dart';

part 'waterway_line_string.g.dart';

@JsonSerializable()
class WaterwayLineString {
  String? placemarkId;
  String? lineString;

  WaterwayLineString({
    this.placemarkId,
    this.lineString,
  });

  factory WaterwayLineString.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WaterwayLineStringFromJson(json);

  static List<WaterwayLineString> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => WaterwayLineString.fromJson(value),
          )
          .toList();

  static Map<String, WaterwayLineString> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          WaterwayLineString.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$WaterwayLineStringToJson(this);
}
