import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'crowding.dart';
import 'line_disruption.dart';
import 'line_service_type_info.dart';
import 'line_route.dart';
import 'line_status.dart';

part 'line.g.dart';

@JsonSerializable()
class Line implements Serializable {
  String id;

  String name;

  String modeName;

  List<LineDisruption> disruptions;

  DateTime created;

  DateTime modified;

  List<LineStatus> lineStatuses;

  List<LineRoute> routeSections;

  List<LineServiceTypeInfo> serviceTypes;

  Crowding crowding;

  Line({
    this.id,
    this.name,
    this.modeName,
    this.disruptions,
    this.created,
    this.modified,
    this.lineStatuses,
    this.routeSections,
    this.serviceTypes,
    this.crowding,
  });

  factory Line.fromJson(Map<String, dynamic> json) {
    return _$LineFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$LineToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
