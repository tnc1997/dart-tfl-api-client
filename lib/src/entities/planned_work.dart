import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'planned_work.g.dart';

@JsonSerializable()
class PlannedWork implements Serializable {
  String id;

  String description;

  DateTime createdDateTime;

  DateTime lastUpdateDateTime;

  PlannedWork({
    this.id,
    this.description,
    this.createdDateTime,
    this.lastUpdateDateTime,
  });

  factory PlannedWork.fromJson(Map<String, dynamic> json) {
    return _$PlannedWorkFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PlannedWorkToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
