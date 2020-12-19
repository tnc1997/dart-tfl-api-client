import 'package:json_annotation/json_annotation.dart';

part 'network_status.g.dart';

@JsonSerializable()
class NetworkStatus {
  String? operator;
  String? status;
  String? message;
  int? statusLevel;

  NetworkStatus({
    this.operator,
    this.status,
    this.message,
    this.statusLevel,
  });

  factory NetworkStatus.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NetworkStatusFromJson(json);

  static List<NetworkStatus> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => NetworkStatus.fromJson(value),
          )
          .toList();

  static Map<String, NetworkStatus> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          NetworkStatus.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$NetworkStatusToJson(this);
}
