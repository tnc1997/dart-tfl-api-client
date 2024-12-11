import 'package:json_annotation/json_annotation.dart';

import 'identifier.dart';
import 'search_match.dart';

part 'matched_stop.g.dart';

@JsonSerializable()
class MatchedStop extends SearchMatch {
  int? routeId;
  String? parentId;
  String? stationId;
  String? icsId;
  String? topMostParentId;
  String? direction;
  String? towards;
  List<String>? modes;
  String? stopType;
  String? stopLetter;
  String? zone;
  String? accessibilitySummary;
  bool? hasDisruption;
  List<Identifier>? lines;
  bool? status;

  MatchedStop({
    String? id,
    String? url,
    String? name,
    double? lat,
    double? lon,
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
  }) : super(
          id: id,
          url: url,
          name: name,
          lat: lat,
          lon: lon,
        );

  factory MatchedStop.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MatchedStopFromJson(json);

  static List<MatchedStop> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => MatchedStop.fromJson(value),
          )
          .toList();

  static Map<String, MatchedStop> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          MatchedStop.fromJson(value),
        ),
      );

  @override
  Map<String, dynamic> toJson() => _$MatchedStopToJson(this);
}
