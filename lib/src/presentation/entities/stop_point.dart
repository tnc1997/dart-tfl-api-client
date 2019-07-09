import './additional_properties.dart';
import './identifier.dart';
import './line_group.dart';
import './line_mode_group.dart';
import './place.dart';

class StopPoint {
  String naptanId;

  String platformName;

  /// The indicator of the stop point e.g. "Stop K".
  String indicator;

  /// The stop letter, if it could be cleansed from the Indicator e.g. "K".
  String stopLetter;

  List<String> modes;

  String icsCode;

  String smsCode;

  String stopType;

  String stationNaptan;

  String accessibilitySummary;

  String hubNaptanCode;

  List<Identifier> lines;

  List<LineGroup> lineGroup;

  List<LineModeGroup> lineModeGroups;

  String fullName;

  String naptanMode;

  bool status;

  String id;

  /// The unique location of this resource.
  String url;

  /// The human readable name.
  String commonName;

  /// The distance of the place from its search point.
  double distance;

  /// The type of Place. See /Place/Meta/placeTypes for possible values.
  String placeType;

  /// The bag of additional key/value pairs with extra information about this place.
  List<AdditionalProperties> additionalProperties;

  List<Place> children;

  List<String> childrenUrls;

  /// The WGS84 latitude of the location.
  double lat;

  /// The WGS84 longitude of the location.
  double lon;

  StopPoint();

  @override
  String toString() {
    return 'StopPoint[naptanId=$naptanId, platformName=$platformName, indicator=$indicator, stopLetter=$stopLetter, modes=$modes, icsCode=$icsCode, smsCode=$smsCode, stopType=$stopType, stationNaptan=$stationNaptan, accessibilitySummary=$accessibilitySummary, hubNaptanCode=$hubNaptanCode, lines=$lines, lineGroup=$lineGroup, lineModeGroups=$lineModeGroups, fullName=$fullName, naptanMode=$naptanMode, status=$status, id=$id, url=$url, commonName=$commonName, distance=$distance, placeType=$placeType, additionalProperties=$additionalProperties, children=$children, childrenUrls=$childrenUrls, lat=$lat, lon=$lon, ]';
  }

  StopPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    naptanId = json['naptanId'];
    platformName = json['platformName'];
    indicator = json['indicator'];
    stopLetter = json['stopLetter'];
    modes = (json['modes'] as List).map((item) => item as String).toList();
    icsCode = json['icsCode'];
    smsCode = json['smsCode'];
    stopType = json['stopType'];
    stationNaptan = json['stationNaptan'];
    accessibilitySummary = json['accessibilitySummary'];
    hubNaptanCode = json['hubNaptanCode'];
    lines = Identifier.listFromJson(json['lines']);
    lineGroup = LineGroup.listFromJson(json['lineGroup']);
    lineModeGroups = LineModeGroup.listFromJson(json['lineModeGroups']);
    fullName = json['fullName'];
    naptanMode = json['naptanMode'];
    status = json['status'];
    id = json['id'];
    url = json['url'];
    commonName = json['commonName'];
    distance = json['distance'];
    placeType = json['placeType'];
    additionalProperties =
        AdditionalProperties.listFromJson(json['additionalProperties']);
    children = Place.listFromJson(json['children']);
    childrenUrls =
        (json['childrenUrls'] as List).map((item) => item as String).toList();
    lat = json['lat'];
    lon = json['lon'];
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
      'lon': lon
    };
  }

  static List<StopPoint> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<StopPoint>()
        : json.map((value) => new StopPoint.fromJson(value)).toList();
  }

  static Map<String, StopPoint> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StopPoint>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new StopPoint.fromJson(value));
    }
    return map;
  }
}
