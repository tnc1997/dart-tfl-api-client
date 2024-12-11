import 'package:json_annotation/json_annotation.dart';

import 'crowding.dart';
import 'disruption.dart';
import 'line_service_type_info.dart';
import 'line_status.dart';
import 'matched_route.dart';

part 'line.g.dart';

@JsonSerializable()
class Line {
  String? id;
  String? name;
  String? modeName;
  List<Disruption>? disruptions;
  DateTime? created;
  DateTime? modified;
  List<LineStatus>? lineStatus;
  List<MatchedRoute>? routeSections;
  List<LineServiceTypeInfo>? serviceTypes;
  Crowding? crowding;

  Line({
    this.id,
    this.name,
    this.modeName,
    this.disruptions,
    this.created,
    this.modified,
    this.lineStatus,
    this.routeSections,
    this.serviceTypes,
    this.crowding,
  });

  factory Line.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LineFromJson(json);

  static List<Line> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Line.fromJson(value),
          )
          .toList();

  static Map<String, Line> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Line.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$LineToJson(this);
}
