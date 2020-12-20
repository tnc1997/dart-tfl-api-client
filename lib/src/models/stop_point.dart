import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/additional_properties.dart';
import 'package:tfl_api_client/src/models/identifier.dart';
import 'package:tfl_api_client/src/models/line_group.dart';
import 'package:tfl_api_client/src/models/line_mode_group.dart';
import 'package:tfl_api_client/src/models/place.dart';

part 'stop_point.g.dart';

@JsonSerializable()
class StopPoint extends Place {
  String? naptanId;
  String? platformName;
  String? indicator;
  String? stopLetter;
  List<String>? modes;
  String? icsCode;
  String? sMSCode;
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

  StopPoint({
    double? lat,
    double? lon,
    String? id,
    String? url,
    String? commonName,
    double? distance,
    String? placeType,
    List<AdditionalProperties>? additionalProperties,
    List<Place>? children,
    List<String>? childrenUrls,
    this.naptanId,
    this.platformName,
    this.indicator,
    this.stopLetter,
    this.modes,
    this.icsCode,
    this.sMSCode,
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
  }) : super(
          lat: lat,
          lon: lon,
          id: id,
          url: url,
          commonName: commonName,
          distance: distance,
          placeType: placeType,
          additionalProperties: additionalProperties,
          children: children,
          childrenUrls: childrenUrls,
        );

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

  @override
  Map<String, dynamic> toJson() => _$StopPointToJson(this);
}
