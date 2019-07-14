import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'network_status.g.dart';

@JsonSerializable()
class NetworkStatus implements Serializable {
  String operator;

  String status;

  String message;

  int statusLevel;

  NetworkStatus({
    this.operator,
    this.status,
    this.message,
    this.statusLevel,
  });

  factory NetworkStatus.fromJson(Map<String, dynamic> json) {
    return _$NetworkStatusFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkStatusToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
