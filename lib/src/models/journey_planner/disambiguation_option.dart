import 'package:json_annotation/json_annotation.dart';

import '../place.dart';

part 'disambiguation_option.g.dart';

@JsonSerializable()
class DisambiguationOption1 {
  String? parameterValue;
  String? uri;
  Place? place;
  int? matchQuality;

  DisambiguationOption1({
    this.parameterValue,
    this.uri,
    this.place,
    this.matchQuality,
  });

  factory DisambiguationOption1.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DisambiguationOption1FromJson(json);

  static List<DisambiguationOption1> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => DisambiguationOption1.fromJson(value),
          )
          .toList();

  static Map<String, DisambiguationOption1> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          DisambiguationOption1.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$DisambiguationOption1ToJson(this);
}
