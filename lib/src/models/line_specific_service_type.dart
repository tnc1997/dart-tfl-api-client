import 'package:json_annotation/json_annotation.dart';

import 'line_service_type_info.dart';

part 'line_specific_service_type.g.dart';

@JsonSerializable()
class LineSpecificServiceType {
  LineServiceTypeInfo? serviceType;
  bool? stopServesServiceType;

  LineSpecificServiceType({
    this.serviceType,
    this.stopServesServiceType,
  });

  factory LineSpecificServiceType.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LineSpecificServiceTypeFromJson(json);

  static List<LineSpecificServiceType> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => LineSpecificServiceType.fromJson(value),
          )
          .toList();

  static Map<String, LineSpecificServiceType> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          LineSpecificServiceType.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$LineSpecificServiceTypeToJson(this);
}
