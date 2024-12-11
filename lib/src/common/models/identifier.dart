import 'package:json_annotation/json_annotation.dart';

import 'crowding.dart';

part 'identifier.g.dart';

@JsonSerializable()
class Identifier {
  String? id;
  String? name;
  String? uri;
  String? fullName;
  String? type;
  Crowding? crowding;
  String? routeType;
  String? status;

  Identifier({
    this.id,
    this.name,
    this.uri,
    this.fullName,
    this.type,
    this.crowding,
    this.routeType,
    this.status,
  });

  factory Identifier.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IdentifierFromJson(json);

  static List<Identifier> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Identifier.fromJson(value),
          )
          .toList();

  static Map<String, Identifier> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Identifier.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$IdentifierToJson(this);
}
