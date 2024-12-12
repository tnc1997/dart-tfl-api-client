import '../../common/models/line_service_type_info.dart';

class LineSpecificServiceType {
  LineServiceTypeInfo? serviceType;
  bool? stopServesServiceType;

  LineSpecificServiceType({
    this.serviceType,
    this.stopServesServiceType,
  });

  factory LineSpecificServiceType.fromJson(
    Map<String, dynamic> json,
  ) {
    return LineSpecificServiceType(
      serviceType: json['serviceType'] == null
          ? null
          : LineServiceTypeInfo.fromJson(
              json['serviceType'] as Map<String, dynamic>),
      stopServesServiceType: json['stopServesServiceType'] as bool?,
    );
  }

  static List<LineSpecificServiceType> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => LineSpecificServiceType.fromJson(value),
          )
          .toList();

  static Map<String, LineSpecificServiceType> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          LineSpecificServiceType.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'serviceType': serviceType,
      'stopServesServiceType': stopServesServiceType,
    };
  }
}
