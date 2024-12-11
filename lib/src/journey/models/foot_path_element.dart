import 'package:json_annotation/json_annotation.dart';

part 'foot_path_element.g.dart';

@JsonSerializable()
class FootPathElement {
  String? type;
  String? level;

  FootPathElement({
    this.type,
    this.level,
  });

  factory FootPathElement.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FootPathElementFromJson(json);

  static List<FootPathElement> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => FootPathElement.fromJson(value),
          )
          .toList();

  static Map<String, FootPathElement> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          FootPathElement.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$FootPathElementToJson(this);
}
