import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/journey_planner/map_item.dart';
import 'package:tfl_api_client/src/models/mode.dart';

part 'point.g.dart';

@JsonSerializable()
class Point1 {
  String? name;
  String? shortName;
  String? stopId;
  String? type;
  String? usage;
  DateTime? associatedTime;
  bool? hasStaticInfo;
  List<MapItem>? maps;
  List<Mode>? modes;
  double? latitude;
  double? longitude;
  String? area;
  int? matchQuality;
  String? fullName;

  Point1({
    this.name,
    this.shortName,
    this.stopId,
    this.type,
    this.usage,
    this.associatedTime,
    this.hasStaticInfo,
    this.maps,
    this.modes,
    this.latitude,
    this.longitude,
    this.area,
    this.matchQuality,
    this.fullName,
  });

  factory Point1.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$Point1FromJson(json);

  static List<Point1> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Point1.fromJson(value),
          )
          .toList();

  static Map<String, Point1> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Point1.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$Point1ToJson(this);
}
