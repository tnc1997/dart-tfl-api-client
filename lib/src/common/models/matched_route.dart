import 'identifiable.dart';
import 'identifier.dart';

class MatchedRoute implements Identifiable {
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
  ) {
    return MatchedRoute(
      id: json['id'] as String?,
      lineId: json['lineId'] as String?,
      routeCode: json['routeCode'] as String?,
      name: json['name'] as String?,
      direction: json['direction'] as String?,
      originationName: json['originationName'] as String?,
      destinationName: json['destinationName'] as String?,
      originator: json['originator'] as String?,
      destination: json['destination'] as String?,
      serviceType: json['serviceType'] as String?,
      validTo: json['validTo'] == null
          ? null
          : DateTime.parse(json['validTo'] as String),
      validFrom: json['validFrom'] == null
          ? null
          : DateTime.parse(json['validFrom'] as String),
    );
  }

  @override
  Identifier toIdentifier() {
    return Identifier(
      id: id,
      name: name,
      uri: '/matchedroute/$id',
      type: 'MatchedRoute',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'lineId': lineId,
      'routeCode': routeCode,
      'name': name,
      'direction': direction,
      'originationName': originationName,
      'destinationName': destinationName,
      'originator': originator,
      'destination': destination,
      'serviceType': serviceType,
      'validTo': validTo?.toIso8601String(),
      'validFrom': validFrom?.toIso8601String(),
    };
  }
}
