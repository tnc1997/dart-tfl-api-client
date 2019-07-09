import './line_specific_service_type.dart';

class LineServiceType {
  String lineName;

  List<LineSpecificServiceType> lineSpecificServiceTypes = [];

  LineServiceType();

  @override
  String toString() {
    return 'LineServiceType[lineName=$lineName, lineSpecificServiceTypes=$lineSpecificServiceTypes, ]';
  }

  LineServiceType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lineName = json['lineName'];
    lineSpecificServiceTypes =
        LineSpecificServiceType.listFromJson(json['lineSpecificServiceTypes']);
  }

  Map<String, dynamic> toJson() {
    return {
      'lineName': lineName,
      'lineSpecificServiceTypes': lineSpecificServiceTypes
    };
  }

  static List<LineServiceType> listFromJson(List<dynamic> json) {
    return json == null
        ? List<LineServiceType>()
        : json.map((value) => LineServiceType.fromJson(value)).toList();
  }

  static Map<String, LineServiceType> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, LineServiceType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = LineServiceType.fromJson(value));
    }
    return map;
  }
}
