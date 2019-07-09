import './line_service_type_info.dart';
import '../../internal/serializable.dart';

class LineSpecificServiceType implements Serializable {
  LineServiceTypeInfo serviceType;

  bool stopServesServiceType;

  LineSpecificServiceType({
    this.serviceType,
    this.stopServesServiceType,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'serviceType': serviceType,
      'stopServesServiceType': stopServesServiceType,
    };
  }

  @override
  String toString() {
    return 'LineSpecificServiceType[serviceType=$serviceType, stopServesServiceType=$stopServesServiceType, ]';
  }

  LineSpecificServiceType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    serviceType = LineServiceTypeInfo.fromJson(json['serviceType']);
    stopServesServiceType = json['stopServesServiceType'];
  }

  static List<LineSpecificServiceType> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<LineSpecificServiceType>()
        : json.map((value) => LineSpecificServiceType.fromJson(value)).toList();
  }

  static Map<String, LineSpecificServiceType> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, LineSpecificServiceType>()
        : json.map((key, value) =>
            MapEntry(key, LineSpecificServiceType.fromJson(value)));
  }
}
