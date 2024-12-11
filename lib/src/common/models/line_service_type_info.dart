import 'package:json_annotation/json_annotation.dart';

part 'line_service_type_info.g.dart';

@JsonSerializable()
class LineServiceTypeInfo {
  String? name;
  String? uri;

  LineServiceTypeInfo({
    this.name,
    this.uri,
  });

  factory LineServiceTypeInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LineServiceTypeInfoFromJson(json);

  static List<LineServiceTypeInfo> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => LineServiceTypeInfo.fromJson(value),
          )
          .toList();

  static Map<String, LineServiceTypeInfo> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          LineServiceTypeInfo.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$LineServiceTypeInfoToJson(this);
}
