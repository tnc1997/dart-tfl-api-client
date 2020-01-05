import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/route_section_naptan_entry_sequence.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'route_section.g.dart';

@JsonSerializable()
class RouteSection implements Serializable {
  String id;

  /// The id of the line.
  String lineId;

  /// The route code.
  String routeCode;

  /// The name.
  String name;

  /// The co-ordinates of the route's path as a GeoJSON string.
  String lineString;

  /// The direction (unified to inbound/outbound).
  String direction;

  /// The name of the Origin StopPoint.
  String originationName;

  /// The name of the Destination StopPoint.
  String destinationName;

  /// The DateTime that the Service containing this Route is valid until.
  DateTime validTo;

  /// The DateTime that the Service containing this Route is valid from.
  DateTime validFrom;

  List<RouteSectionNaptanEntrySequence> routeSectionNaptanEntrySequence;

  RouteSection({
    this.id,
    this.lineId,
    this.routeCode,
    this.name,
    this.lineString,
    this.direction,
    this.originationName,
    this.destinationName,
    this.validTo,
    this.validFrom,
    this.routeSectionNaptanEntrySequence,
  });

  factory RouteSection.fromJson(Map<String, dynamic> json) {
    return _$RouteSectionFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$RouteSectionToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
