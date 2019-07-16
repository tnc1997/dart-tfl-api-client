import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/apis/place_types_resource_api.dart';

import '../interfaces/serializable.dart';
import 'additional_properties.dart';
import 'identifier.dart';
import 'line_group.dart';
import 'line_mode_group.dart';
import 'place.dart';

part 'stop_point.g.dart';

@JsonSerializable()
class StopPoint implements Serializable {
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

  /// The type of this place. See [PlaceTypesResourceApi.get] for possible values.
  String placeType;

  /// The bag of additional key/value pairs with extra information about this place.
  List<AdditionalProperties> additionalProperties;

  List<Place> children;

  List<String> childrenUrls;

  /// The WGS84 latitude of the location.
  double lat;

  /// The WGS84 longitude of the location.
  double lon;

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

  factory StopPoint.fromJson(Map<String, dynamic> json) {
    return _$StopPointFromJson(json);
  }

  @override
  bool operator ==(other) {
    return other is StopPoint && id == other.id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }

  @override
  Map<String, dynamic> toJson() {
    return _$StopPointToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
