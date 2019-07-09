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
    serviceType = LineServiceTypeInfo.fromJson(json['serviceType']);
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
        ? List<LineSpecificServiceType>()
        : json.map((value) => LineSpecificServiceType.fromJson(value)).toList();
  }

  static Map<String, LineSpecificServiceType> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, LineSpecificServiceType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = LineSpecificServiceType.fromJson(value));
    }
    return map;
  }
}
