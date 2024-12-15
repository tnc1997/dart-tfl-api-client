import 'crowding.dart';

class Identifier {
  String? id;
  String? name;
  String? uri;
  String? fullName;
  String? type;
  Crowding? crowding;
  String? routeType;
  String? status;
  String? motType;
  String? network;

  Identifier({
    this.id,
    this.name,
    this.uri,
    this.fullName,
    this.type,
    this.crowding,
    this.routeType,
    this.status,
    this.motType,
    this.network,
  });

  factory Identifier.fromJson(
    Map<String, dynamic> json,
  ) {
    return Identifier(
      id: json['id'] as String?,
      name: json['name'] as String?,
      uri: json['uri'] as String?,
      fullName: json['fullName'] as String?,
      type: json['type'] as String?,
      crowding: json['crowding'] == null
          ? null
          : Crowding.fromJson(json['crowding'] as Map<String, dynamic>),
      routeType: json['routeType'] as String?,
      status: json['status'] as String?,
      motType: json['motType'] as String?,
      network: json['network'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'uri': uri,
      'fullName': fullName,
      'type': type,
      'crowding': crowding,
      'routeType': routeType,
      'status': status,
      'motType': motType,
      'network': network,
    };
  }
}
