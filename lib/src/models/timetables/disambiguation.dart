import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/timetables/disambiguation_option.dart';

part 'disambiguation.g.dart';

@JsonSerializable()
class Disambiguation2 {
  List<DisambiguationOption2>? disambiguationOptions;

  Disambiguation2({
    this.disambiguationOptions,
  });

  factory Disambiguation2.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$Disambiguation2FromJson(json);

  static List<Disambiguation2> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Disambiguation2.fromJson(value),
          )
          .toList();

  static Map<String, Disambiguation2> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Disambiguation2.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$Disambiguation2ToJson(this);
}
