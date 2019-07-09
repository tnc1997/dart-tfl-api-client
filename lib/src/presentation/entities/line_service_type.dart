import './line_specific_service_type.dart';
import '../../internal/serializable.dart';

class LineServiceType implements Serializable {
  String lineName;

  List<LineSpecificServiceType> lineSpecificServiceTypes;

  LineServiceType({
    this.lineName,
    this.lineSpecificServiceTypes,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'lineName': lineName,
      'lineSpecificServiceTypes': lineSpecificServiceTypes,
    };
  }

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

  static List<LineServiceType> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<LineServiceType>()
        : json.map((value) => LineServiceType.fromJson(value)).toList();
  }

  static Map<String, LineServiceType> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, LineServiceType>()
        : json.map(
            (key, value) => MapEntry(key, LineServiceType.fromJson(value)));
  }
}
