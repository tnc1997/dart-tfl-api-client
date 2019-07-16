import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'ordered_route.g.dart';

@JsonSerializable()
class OrderedRoute implements Serializable {
  String name;

  List<String> naptanIds;

  String serviceType;

  OrderedRoute({
    this.name,
    this.naptanIds,
    this.serviceType,
  });

  factory OrderedRoute.fromJson(Map<String, dynamic> json) {
    return _$OrderedRouteFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$OrderedRouteToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
