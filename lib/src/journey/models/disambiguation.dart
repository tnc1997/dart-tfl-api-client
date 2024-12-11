import 'package:json_annotation/json_annotation.dart';

import 'disambiguation_option.dart';

part 'disambiguation.g.dart';

@JsonSerializable()
class Disambiguation1 {
  List<DisambiguationOption1>? disambiguationOptions;
  String? matchStatus;

  Disambiguation1({
    this.disambiguationOptions,
    this.matchStatus,
  });

  factory Disambiguation1.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$Disambiguation1FromJson(json);

  static List<Disambiguation1> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Disambiguation1.fromJson(value),
          )
          .toList();

  static Map<String, Disambiguation1> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Disambiguation1.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$Disambiguation1ToJson(this);
}
