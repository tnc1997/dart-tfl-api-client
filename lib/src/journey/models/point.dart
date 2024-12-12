import '../../common/models/mode.dart';
import 'map_item.dart';

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
  ) {
    return Point1(
      name: json['name'] as String?,
      shortName: json['shortName'] as String?,
      stopId: json['stopId'] as String?,
      type: json['type'] as String?,
      usage: json['usage'] as String?,
      associatedTime: json['associatedTime'] == null
          ? null
          : DateTime.parse(json['associatedTime'] as String),
      hasStaticInfo: json['hasStaticInfo'] as bool?,
      maps: (json['maps'] as List<dynamic>?)
          ?.map((e) => MapItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      modes: (json['modes'] as List<dynamic>?)
          ?.map((e) => Mode.fromJson(e as Map<String, dynamic>))
          .toList(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      area: json['area'] as String?,
      matchQuality: (json['matchQuality'] as num?)?.toInt(),
      fullName: json['fullName'] as String?,
    );
  }

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

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'shortName': shortName,
      'stopId': stopId,
      'type': type,
      'usage': usage,
      'associatedTime': associatedTime?.toIso8601String(),
      'hasStaticInfo': hasStaticInfo,
      'maps': maps,
      'modes': modes,
      'latitude': latitude,
      'longitude': longitude,
      'area': area,
      'matchQuality': matchQuality,
      'fullName': fullName,
    };
  }
}
