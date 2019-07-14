import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'road.g.dart';

@JsonSerializable()
class Road implements Serializable {
  String id;

  /// The display name e.g. "North Circular (A406)".
  String displayName;

  /// The group name e.g. "Central London". Most roads are not grouped, in which case this field can be null.
  String group;

  /// The standard multi-mode status severity code.
  String statusSeverity;

  /// The description of the status severity as applied to roads.
  String statusSeverityDescription;

  /// The bounds given by the south-east followed by the north-west co-ordinate pair in GeoJSON format e.g. "[[-1.241531,51.242151],[1.641223,53.765721]]".
  String bounds;

  /// The envelope given by the corner co-ordinates of a rectangular (four-point) polygon in GeoJSON format e.g. "[[-1.241531,51.242151],[-1.241531,53.765721],[1.641223,53.765721],[1.641223,51.242151]]".
  String envelope;

  /// The start of the period over which status has been aggregated, or null if this is the current road status.
  DateTime statusAggregationStartDate;

  /// The end of the period over which status has been aggregated, or null if this is the current road status.
  DateTime statusAggregationEndDate;

  /// The URL to retrieve this road.
  String url;

  Road({
    this.id,
    this.displayName,
    this.group,
    this.statusSeverity,
    this.statusSeverityDescription,
    this.bounds,
    this.envelope,
    this.statusAggregationStartDate,
    this.statusAggregationEndDate,
    this.url,
  });

  factory Road.fromJson(Map<String, dynamic> json) {
    return _$RoadFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$RoadToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
