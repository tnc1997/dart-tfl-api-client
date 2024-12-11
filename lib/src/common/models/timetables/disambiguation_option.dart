import 'package:json_annotation/json_annotation.dart';

part 'disambiguation_option.g.dart';

@JsonSerializable()
class DisambiguationOption2 {
  String? description;
  String? uri;

  DisambiguationOption2({
    this.description,
    this.uri,
  });

  factory DisambiguationOption2.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DisambiguationOption2FromJson(json);

  static List<DisambiguationOption2> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => DisambiguationOption2.fromJson(value),
          )
          .toList();

  static Map<String, DisambiguationOption2> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          DisambiguationOption2.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$DisambiguationOption2ToJson(this);
}
