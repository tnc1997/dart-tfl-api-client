import 'package:json_annotation/json_annotation.dart';

import 'service_status.dart';

part 'api_health.g.dart';

@JsonSerializable()
class ApiHealth {
  String? id;
  String? apiName;
  String? globalApiHealthStatus;
  List<ServiceStatus>? childServices;
  DateTime? startDateTime;
  DateTime? endDateTime;

  ApiHealth({
    this.id,
    this.apiName,
    this.globalApiHealthStatus,
    this.childServices,
    this.startDateTime,
    this.endDateTime,
  });

  factory ApiHealth.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ApiHealthFromJson(json);

  static List<ApiHealth> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ApiHealth.fromJson(value),
          )
          .toList();

  static Map<String, ApiHealth> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ApiHealth.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ApiHealthToJson(this);
}
