import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/identifier.dart';
import 'package:tfl_api_client/src/models/stop_point.dart';
import 'package:tfl_api_client/src/models/validity_period.dart';

part 'planned_works.g.dart';

@JsonSerializable()
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
  ) =>
      _$PlannedWorksFromJson(json);

  static List<PlannedWorks> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PlannedWorks.fromJson(value),
          )
          .toList();

  static Map<String, PlannedWorks> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PlannedWorks.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PlannedWorksToJson(this);
}
