import 'package:json_annotation/json_annotation.dart';

import 'route_section_naptan_entry_sequence.dart';

part 'route_section.g.dart';

@JsonSerializable()
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
  ) =>
      _$RouteSectionFromJson(json);

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

  Map<String, dynamic> toJson() => _$RouteSectionToJson(this);
}
