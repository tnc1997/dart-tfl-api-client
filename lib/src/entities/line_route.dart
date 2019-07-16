import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'line_route.g.dart';

@JsonSerializable()
class LineRoute implements Serializable {
  /// The route code.
  String routeCode;

  /// The name.
  String name;

  /// The direction (unified to inbound/outbound).
  String direction;

  /// The name of the Origin StopPoint.
  String originationName;

  /// The name of the Destination StopPoint.
  String destinationName;

  /// The id (NaPTAN code) of the Origin StopPoint.
  String originator;

  /// The id (NaPTAN code) or the Destination StopPoint.
  String destination;

  /// Regular or Night.
  String serviceType;

  /// The DateTime that the Service containing this Route is valid until.
  DateTime validTo;

  /// The DateTime that the Service containing this Route is valid from.
  DateTime validFrom;

  LineRoute({
    this.routeCode,
    this.name,
    this.direction,
    this.originationName,
    this.destinationName,
    this.originator,
    this.destination,
    this.serviceType,
    this.validTo,
    this.validFrom,
  });

  factory LineRoute.fromJson(Map<String, dynamic> json) {
    return _$LineRouteFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$LineRouteToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
