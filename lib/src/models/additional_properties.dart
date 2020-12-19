import 'package:json_annotation/json_annotation.dart';

part 'additional_properties.g.dart';

@JsonSerializable()
class AdditionalProperties {
  String? category;
  String? key;
  String? sourceSystemKey;
  String? value;
  DateTime? modified;

  AdditionalProperties({
    this.category,
    this.key,
    this.sourceSystemKey,
    this.value,
    this.modified,
  });

  factory AdditionalProperties.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AdditionalPropertiesFromJson(json);

  static List<AdditionalProperties> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => AdditionalProperties.fromJson(value),
          )
          .toList();

  static Map<String, AdditionalProperties> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          AdditionalProperties.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$AdditionalPropertiesToJson(this);
}
