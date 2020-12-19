import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/line_specific_service_type.dart';

part 'line_service_type.g.dart';

@JsonSerializable()
class LineServiceType {
  String? lineName;
  List<LineSpecificServiceType>? lineSpecificServiceTypes;

  LineServiceType({
    this.lineName,
    this.lineSpecificServiceTypes,
  });

  factory LineServiceType.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LineServiceTypeFromJson(json);

  static List<LineServiceType> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => LineServiceType.fromJson(value),
          )
          .toList();

  static Map<String, LineServiceType> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          LineServiceType.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$LineServiceTypeToJson(this);
}
