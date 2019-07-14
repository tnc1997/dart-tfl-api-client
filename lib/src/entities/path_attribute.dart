import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'path_attribute.g.dart';

@JsonSerializable()
class PathAttribute implements Serializable {
  String name;

  String value;

  PathAttribute({
    this.name,
    this.value,
  });

  factory PathAttribute.fromJson(Map<String, dynamic> json) {
    return _$PathAttributeFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PathAttributeToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
