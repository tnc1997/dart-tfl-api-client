import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'identifier.dart';

part 'route_option.g.dart';

@JsonSerializable()
class RouteOption implements Serializable {
  String id;

  String name;

  List<String> directions;

  Identifier lineIdentifier;

  RouteOption({
    this.id,
    this.name,
    this.directions,
    this.lineIdentifier,
  });

  factory RouteOption.fromJson(Map<String, dynamic> json) {
    return _$RouteOptionFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$RouteOptionToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
