import 'package:json_annotation/json_annotation.dart';

part 'street_match.g.dart';

@JsonSerializable()
class StreetMatch {
  String? street;

  StreetMatch({
    this.street,
  });

  factory StreetMatch.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StreetMatchFromJson(json);

  static List<StreetMatch> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => StreetMatch.fromJson(value),
          )
          .toList();

  static Map<String, StreetMatch> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          StreetMatch.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$StreetMatchToJson(this);
}
