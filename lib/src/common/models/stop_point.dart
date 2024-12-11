import 'package:json_annotation/json_annotation.dart';

import 'additional_properties.dart';
import 'identifier.dart';
import 'line_group.dart';
import 'line_mode_group.dart';
import 'place.dart';

part 'stop_point.g.dart';

@JsonSerializable()
class StopPoint {
  String? naptanId;
  String? platformName;
  String? indicator;
  String? stopLetter;
  List<String>? modes;
  String? icsCode;
  String? smsCode;
  String? stopType;
  String? stationNaptan;
  String? accessibilitySummary;
  String? hubNaptanCode;
  List<Identifier>? lines;
  List<LineGroup>? lineGroup;
  List<LineModeGroup>? lineModeGroups;
  String? fullName;
  String? naptanMode;
  Object? status;
  String? id;
  String? url;
  String? commonName;
  double? distance;
  String? placeType;
  List<AdditionalProperties>? additionalProperties;
  List<Place>? children;
  List<String>? childrenUrls;
  double? lat;
  double? lon;

  StopPoint({
    this.naptanId,
    this.platformName,
    this.indicator,
    this.stopLetter,
    this.modes,
    this.icsCode,
    this.smsCode,
    this.stopType,
    this.stationNaptan,
    this.accessibilitySummary,
    this.hubNaptanCode,
    this.lines,
    this.lineGroup,
    this.lineModeGroups,
    this.fullName,
    this.naptanMode,
    this.status,
    this.id,
    this.url,
    this.commonName,
    this.distance,
    this.placeType,
    this.additionalProperties,
    this.children,
    this.childrenUrls,
    this.lat,
    this.lon,
  });

  factory StopPoint.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StopPointFromJson(json);

  static List<StopPoint> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => StopPoint.fromJson(value),
          )
          .toList();

  static Map<String, StopPoint> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          StopPoint.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$StopPointToJson(this);
}
