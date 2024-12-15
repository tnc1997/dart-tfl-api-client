import '../../common/models/identifiable.dart';
import '../../common/models/identifier.dart';
import '../../common/models/search_match.dart';

class MatchedStop extends SearchMatch implements Identifiable {
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
  ) {
    return MatchedStop(
      id: json['id'] as String?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      routeId: (json['routeId'] as num?)?.toInt(),
      parentId: json['parentId'] as String?,
      stationId: json['stationId'] as String?,
      icsId: json['icsId'] as String?,
      topMostParentId: json['topMostParentId'] as String?,
      direction: json['direction'] as String?,
      towards: json['towards'] as String?,
      modes:
          (json['modes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      stopType: json['stopType'] as String?,
      stopLetter: json['stopLetter'] as String?,
      zone: json['zone'] as String?,
      accessibilitySummary: json['accessibilitySummary'] as String?,
      hasDisruption: json['hasDisruption'] as bool?,
      lines: (json['lines'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as bool?,
    );
  }

  @override
  Identifier toIdentifier() {
    return Identifier(
      id: id,
      name: name,
      uri: '/stoppoint/$id',
      type: 'StopPoint',
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'name': name,
      'lat': lat,
      'lon': lon,
      'routeId': routeId,
      'parentId': parentId,
      'stationId': stationId,
      'icsId': icsId,
      'topMostParentId': topMostParentId,
      'direction': direction,
      'towards': towards,
      'modes': modes,
      'stopType': stopType,
      'stopLetter': stopLetter,
      'zone': zone,
      'accessibilitySummary': accessibilitySummary,
      'hasDisruption': hasDisruption,
      'lines': lines,
      'status': status,
    };
  }
}
