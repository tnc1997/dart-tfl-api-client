import 'identifier.dart';
import 'stop_point.dart';
import 'validity_period.dart';

class PlannedWorks {
  String? id;
  String? description;
  DateTime? created;
  DateTime? lastUpdate;
  List<ValidityPeriod>? validityDates;
  List<Identifier>? affectedRoutes;
  List<StopPoint>? affectedStops;
  List<Identifier>? affectedModes;
  bool? isBlocking;
  bool? isWholeLine;

  PlannedWorks({
    this.id,
    this.description,
    this.created,
    this.lastUpdate,
    this.validityDates,
    this.affectedRoutes,
    this.affectedStops,
    this.affectedModes,
    this.isBlocking,
    this.isWholeLine,
  });

  factory PlannedWorks.fromJson(
    Map<String, dynamic> json,
  ) {
    return PlannedWorks(
      id: json['id'] as String?,
      description: json['description'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      lastUpdate: json['lastUpdate'] == null
          ? null
          : DateTime.parse(json['lastUpdate'] as String),
      validityDates: (json['validityDates'] as List<dynamic>?)
          ?.map((e) => ValidityPeriod.fromJson(e as Map<String, dynamic>))
          .toList(),
      affectedRoutes: (json['affectedRoutes'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      affectedStops: (json['affectedStops'] as List<dynamic>?)
          ?.map((e) => StopPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      affectedModes: (json['affectedModes'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      isBlocking: json['isBlocking'] as bool?,
      isWholeLine: json['isWholeLine'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'created': created?.toIso8601String(),
      'lastUpdate': lastUpdate?.toIso8601String(),
      'validityDates': validityDates,
      'affectedRoutes': affectedRoutes,
      'affectedStops': affectedStops,
      'affectedModes': affectedModes,
      'isBlocking': isBlocking,
      'isWholeLine': isWholeLine,
    };
  }
}
