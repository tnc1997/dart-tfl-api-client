import 'package:json_annotation/json_annotation.dart';

part 'attribution.g.dart';

@JsonSerializable()
class Attribution {
  String? link;
  String? text;
  String? logo;

  Attribution({
    this.link,
    this.text,
    this.logo,
  });

  factory Attribution.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AttributionFromJson(json);

  static List<Attribution> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Attribution.fromJson(value),
          )
          .toList();

  static Map<String, Attribution> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Attribution.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$AttributionToJson(this);
}
