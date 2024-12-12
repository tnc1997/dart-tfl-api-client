import 'line_specific_service_type.dart';

class LineServiceType {
  String? lineName;
  List<LineSpecificServiceType>? lineSpecificServiceTypes;

  LineServiceType({
    this.lineName,
    this.lineSpecificServiceTypes,
  });

  factory LineServiceType.fromJson(
    Map<String, dynamic> json,
  ) {
    return LineServiceType(
      lineName: json['lineName'] as String?,
      lineSpecificServiceTypes:
          (json['lineSpecificServiceTypes'] as List<dynamic>?)
              ?.map((e) =>
                  LineSpecificServiceType.fromJson(e as Map<String, dynamic>))
              .toList(),
    );
  }

  static List<LineServiceType> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => LineServiceType.fromJson(value),
          )
          .toList();

  static Map<String, LineServiceType> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          LineServiceType.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'lineName': lineName,
      'lineSpecificServiceTypes': lineSpecificServiceTypes,
    };
  }
}
