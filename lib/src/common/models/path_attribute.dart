import 'package:json_annotation/json_annotation.dart';

part 'path_attribute.g.dart';

@JsonSerializable()
class PathAttribute {
  String? name;
  String? value;

  PathAttribute({
    this.name,
    this.value,
  });

  factory PathAttribute.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PathAttributeFromJson(json);

  static List<PathAttribute> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PathAttribute.fromJson(value),
          )
          .toList();

  static Map<String, PathAttribute> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PathAttribute.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PathAttributeToJson(this);
}
