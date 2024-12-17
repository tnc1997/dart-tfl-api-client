import '../../common/models/mode.dart';
import 'journey_planner_map_item.dart';

class JourneyPlannerPoint {
  String? name;
  String? shortName;
  String? stopId;
  String? type;
  String? usage;
  DateTime? associatedTime;
  bool? hasStaticInfo;
  List<JourneyPlannerMapItem>? maps;
  List<Mode>? modes;
  double? latitude;
  double? longitude;
  String? area;
  int? matchQuality;
  String? fullName;

  JourneyPlannerPoint({
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

  factory JourneyPlannerPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerPoint(
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
          ?.map(
              (e) => JourneyPlannerMapItem.fromJson(e as Map<String, dynamic>))
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
