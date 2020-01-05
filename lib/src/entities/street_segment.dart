import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'street_segment.g.dart';

@JsonSerializable()
class StreetSegment implements Serializable {
  /// The 16 digit unique integer identifying an OS (Ordnance Survey) ITN (Integrated Transport Network) road link.
  String toid;

  /// The GeoJSON formatted string containing two latitude/longitude (WGS84) pairs that identify the start and end points of the street segment.
  String lineString;

  /// The id from the source system of the disruption that this street belongs to.
  int sourceSystemId;

  /// The key of the source system of the disruption that this street belongs to.
  String sourceSystemKey;

  StreetSegment({
    this.toid,
    this.lineString,
    this.sourceSystemId,
    this.sourceSystemKey,
  });

  factory StreetSegment.fromJson(Map<String, dynamic> json) {
    return _$StreetSegmentFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$StreetSegmentToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
