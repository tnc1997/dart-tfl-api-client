import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'additional_properties.g.dart';

@JsonSerializable()
class AdditionalProperties implements Serializable {
  String category;

  String key;

  String sourceSystemKey;

  String value;

  DateTime modified;

  AdditionalProperties({
    this.category,
    this.key,
    this.sourceSystemKey,
    this.value,
    this.modified,
  });

  factory AdditionalProperties.fromJson(Map<String, dynamic> json) {
    return _$AdditionalPropertiesFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$AdditionalPropertiesToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
