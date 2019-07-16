import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'identifier.dart';

part 'matched_stop.g.dart';

@JsonSerializable()
class MatchedStop implements Serializable {
  int routeId;

  String parentId;

  String stationId;

  String icsId;

  String topMostParentId;

  String direction;

  String towards;

  List<String> modes;

  String stopType;

  String stopLetter;

  String zone;

  String accessibilitySummary;

  bool hasDisruption;

  List<Identifier> lines;

  bool status;

  String id;

  String url;

  String name;

  double lat;

  double lon;

  MatchedStop({
    this.routeId,
    this.parentId,
    this.stationId,
    this.icsId,
    this.topMostParentId,
    this.direction,
    this.towards,
    this.modes,
    this.stopType,
    this.stopLetter,
    this.zone,
    this.accessibilitySummary,
    this.hasDisruption,
    this.lines,
    this.status,
    this.id,
    this.url,
    this.name,
    this.lat,
    this.lon,
  });

  factory MatchedStop.fromJson(Map<String, dynamic> json) {
    return _$MatchedStopFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$MatchedStopToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
