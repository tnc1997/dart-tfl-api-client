import 'route_section_naptan_entry_sequence.dart';

class RouteSection {
  String? id;
  String? lineId;
  String? routeCode;
  String? name;
  String? lineString;
  String? direction;
  String? originationName;
  String? destinationName;
  DateTime? validTo;
  DateTime? validFrom;
  List<RouteSectionNaptanEntrySequence>? routeSectionNaptanEntrySequence;

  RouteSection({
    this.id,
    this.lineId,
    this.routeCode,
    this.name,
    this.lineString,
    this.direction,
    this.originationName,
    this.destinationName,
    this.validTo,
    this.validFrom,
    this.routeSectionNaptanEntrySequence,
  });

  factory RouteSection.fromJson(
    Map<String, dynamic> json,
  ) {
    return RouteSection(
      id: json['id'] as String?,
      lineId: json['lineId'] as String?,
      routeCode: json['routeCode'] as String?,
      name: json['name'] as String?,
      lineString: json['lineString'] as String?,
      direction: json['direction'] as String?,
      originationName: json['originationName'] as String?,
      destinationName: json['destinationName'] as String?,
      validTo: json['validTo'] == null
          ? null
          : DateTime.parse(json['validTo'] as String),
      validFrom: json['validFrom'] == null
          ? null
          : DateTime.parse(json['validFrom'] as String),
      routeSectionNaptanEntrySequence:
          (json['routeSectionNaptanEntrySequence'] as List<dynamic>?)
              ?.map((e) => RouteSectionNaptanEntrySequence.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
    );
  }

  static List<RouteSection> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RouteSection.fromJson(value),
          )
          .toList();

  static Map<String, RouteSection> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RouteSection.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'lineId': lineId,
      'routeCode': routeCode,
      'name': name,
      'lineString': lineString,
      'direction': direction,
      'originationName': originationName,
      'destinationName': destinationName,
      'validTo': validTo?.toIso8601String(),
      'validFrom': validFrom?.toIso8601String(),
      'routeSectionNaptanEntrySequence': routeSectionNaptanEntrySequence,
    };
  }
}
