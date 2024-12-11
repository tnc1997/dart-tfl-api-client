import 'package:json_annotation/json_annotation.dart';

part 'stop_point_route_section.g.dart';

@JsonSerializable()
class StopPointRouteSection {
  String? naptanId;
  String? lineId;
  String? mode;
  DateTime? validFrom;
  DateTime? validTo;
  String? direction;
  String? routeSectionName;
  String? lineString;
  bool? isActive;
  String? serviceType;
  String? vehicleDestinationText;
  String? destinationName;

  StopPointRouteSection({
    this.naptanId,
    this.lineId,
    this.mode,
    this.validFrom,
    this.validTo,
    this.direction,
    this.routeSectionName,
    this.lineString,
    this.isActive,
    this.serviceType,
    this.vehicleDestinationText,
    this.destinationName,
  });

  factory StopPointRouteSection.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StopPointRouteSectionFromJson(json);

  static List<StopPointRouteSection> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => StopPointRouteSection.fromJson(value),
          )
          .toList();

  static Map<String, StopPointRouteSection> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          StopPointRouteSection.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$StopPointRouteSectionToJson(this);
}
