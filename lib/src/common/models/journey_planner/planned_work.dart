import 'package:json_annotation/json_annotation.dart';

part 'planned_work.g.dart';

@JsonSerializable()
class PlannedWork {
  String? id;
  String? description;
  DateTime? createdDateTime;
  DateTime? lastUpdateDateTime;

  PlannedWork({
    this.id,
    this.description,
    this.createdDateTime,
    this.lastUpdateDateTime,
  });

  factory PlannedWork.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PlannedWorkFromJson(json);

  static List<PlannedWork> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PlannedWork.fromJson(value),
          )
          .toList();

  static Map<String, PlannedWork> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PlannedWork.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PlannedWorkToJson(this);
}
