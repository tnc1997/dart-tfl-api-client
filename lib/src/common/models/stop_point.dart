import 'additional_properties.dart';
import 'identifier.dart';
import 'line_group.dart';
import 'line_mode_group.dart';
import 'place.dart';

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
  ) {
    return StopPoint(
      naptanId: json['naptanId'] as String?,
      platformName: json['platformName'] as String?,
      indicator: json['indicator'] as String?,
      stopLetter: json['stopLetter'] as String?,
      modes:
          (json['modes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      icsCode: json['icsCode'] as String?,
      smsCode: json['smsCode'] as String?,
      stopType: json['stopType'] as String?,
      stationNaptan: json['stationNaptan'] as String?,
      accessibilitySummary: json['accessibilitySummary'] as String?,
      hubNaptanCode: json['hubNaptanCode'] as String?,
      lines: (json['lines'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      lineGroup: (json['lineGroup'] as List<dynamic>?)
          ?.map((e) => LineGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      lineModeGroups: (json['lineModeGroups'] as List<dynamic>?)
          ?.map((e) => LineModeGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      fullName: json['fullName'] as String?,
      naptanMode: json['naptanMode'] as String?,
      status: json['status'],
      id: json['id'] as String?,
      url: json['url'] as String?,
      commonName: json['commonName'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      placeType: json['placeType'] as String?,
      additionalProperties: (json['additionalProperties'] as List<dynamic>?)
          ?.map((e) => AdditionalProperties.fromJson(e as Map<String, dynamic>))
          .toList(),
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => Place.fromJson(e as Map<String, dynamic>))
          .toList(),
      childrenUrls: (json['childrenUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'naptanId': naptanId,
      'platformName': platformName,
      'indicator': indicator,
      'stopLetter': stopLetter,
      'modes': modes,
      'icsCode': icsCode,
      'smsCode': smsCode,
      'stopType': stopType,
      'stationNaptan': stationNaptan,
      'accessibilitySummary': accessibilitySummary,
      'hubNaptanCode': hubNaptanCode,
      'lines': lines,
      'lineGroup': lineGroup,
      'lineModeGroups': lineModeGroups,
      'fullName': fullName,
      'naptanMode': naptanMode,
      'status': status,
      'id': id,
      'url': url,
      'commonName': commonName,
      'distance': distance,
      'placeType': placeType,
      'additionalProperties': additionalProperties,
      'children': children,
      'childrenUrls': childrenUrls,
      'lat': lat,
      'lon': lon,
    };
  }
}
