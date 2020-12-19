import 'package:json_annotation/json_annotation.dart';

part 'ordered_route.g.dart';

@JsonSerializable()
class OrderedRoute {
  String? name;
  List<String>? naptanIds;
  String? serviceType;

  OrderedRoute({
    this.name,
    this.naptanIds,
    this.serviceType,
  });

  factory OrderedRoute.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OrderedRouteFromJson(json);

  static List<OrderedRoute> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => OrderedRoute.fromJson(value),
          )
          .toList();

  static Map<String, OrderedRoute> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          OrderedRoute.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$OrderedRouteToJson(this);
}
