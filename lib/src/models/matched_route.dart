import 'package:json_annotation/json_annotation.dart';

part 'matched_route.g.dart';

@JsonSerializable()
class MatchedRoute {
  String? id;
  String? lineId;
  String? routeCode;
  String? name;
  String? direction;
  String? originationName;
  String? destinationName;
  String? originator;
  String? destination;
  String? serviceType;
  DateTime? validTo;
  DateTime? validFrom;

  MatchedRoute({
    this.id,
    this.lineId,
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

  factory MatchedRoute.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MatchedRouteFromJson(json);

  static List<MatchedRoute> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => MatchedRoute.fromJson(value),
          )
          .toList();

  static Map<String, MatchedRoute> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          MatchedRoute.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$MatchedRouteToJson(this);
}
