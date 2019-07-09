class NetworkStatus {
  String operator;

  String status;

  String message;

  int statusLevel;

  NetworkStatus();

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

  Map<String, dynamic> toJson() {
    return {
      'operator': operator,
      'status': status,
      'message': message,
      'statusLevel': statusLevel
    };
  }

  static List<NetworkStatus> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<NetworkStatus>()
        : json.map((value) => new NetworkStatus.fromJson(value)).toList();
  }

  static Map<String, NetworkStatus> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NetworkStatus>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new NetworkStatus.fromJson(value));
    }
    return map;
  }
}
