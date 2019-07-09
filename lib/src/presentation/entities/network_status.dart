import '../../internal/serializable.dart';

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

  @override
  Map<String, dynamic> toJson() {
    return {
      'operator': operator,
      'status': status,
      'message': message,
      'statusLevel': statusLevel,
    };
  }

  @override
  String toString() {
    return 'NetworkStatus[operator=$operator, status=$status, message=$message, statusLevel=$statusLevel, ]';
  }

  NetworkStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    operator = json['operator'];
    status = json['status'];
    message = json['message'];
    statusLevel = json['statusLevel'];
  }

  static List<NetworkStatus> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<NetworkStatus>()
        : json.map((value) => NetworkStatus.fromJson(value)).toList();
  }

  static Map<String, NetworkStatus> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, NetworkStatus>()
        : json
            .map((key, value) => MapEntry(key, NetworkStatus.fromJson(value)));
  }
}
