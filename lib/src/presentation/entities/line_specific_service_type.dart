import './line_service_type_info.dart';

class LineSpecificServiceType {
  LineServiceTypeInfo serviceType;

  bool stopServesServiceType;

  LineSpecificServiceType();

  @override
  String toString() {
    return 'LineSpecificServiceType[serviceType=$serviceType, stopServesServiceType=$stopServesServiceType, ]';
  }

  LineSpecificServiceType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceType = new LineServiceTypeInfo.fromJson(json['serviceType']);
    stopServesServiceType = json['stopServesServiceType'];
  }

  Map<String, dynamic> toJson() {
    return {
      'serviceType': serviceType,
      'stopServesServiceType': stopServesServiceType
    };
  }

  static List<LineSpecificServiceType> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<LineSpecificServiceType>()
        : json
            .map((value) => new LineSpecificServiceType.fromJson(value))
            .toList();
  }

  static Map<String, LineSpecificServiceType> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LineSpecificServiceType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new LineSpecificServiceType.fromJson(value));
    }
    return map;
  }
}
