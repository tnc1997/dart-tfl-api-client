import 'crowding.dart';
import 'disruption.dart';
import 'line_service_type_info.dart';
import 'line_status.dart';
import 'matched_route.dart';

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
  ) {
    return Line(
      id: json['id'] as String?,
      name: json['name'] as String?,
      modeName: json['modeName'] as String?,
      disruptions: (json['disruptions'] as List<dynamic>?)
          ?.map((e) => Disruption.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
      lineStatus: (json['lineStatus'] as List<dynamic>?)
          ?.map((e) => LineStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
      routeSections: (json['routeSections'] as List<dynamic>?)
          ?.map((e) => MatchedRoute.fromJson(e as Map<String, dynamic>))
          .toList(),
      serviceTypes: (json['serviceTypes'] as List<dynamic>?)
          ?.map((e) => LineServiceTypeInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      crowding: json['crowding'] == null
          ? null
          : Crowding.fromJson(json['crowding'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'modeName': modeName,
      'disruptions': disruptions,
      'created': created?.toIso8601String(),
      'modified': modified?.toIso8601String(),
      'lineStatus': lineStatus,
      'routeSections': routeSections,
      'serviceTypes': serviceTypes,
      'crowding': crowding,
    };
  }
}
