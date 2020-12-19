import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/identifier.dart';

part 'route_option.g.dart';

@JsonSerializable()
class RouteOption {
  String? id;
  String? name;
  List<String>? directions;
  Identifier? lineIdentifier;

  RouteOption({
    this.id,
    this.name,
    this.directions,
    this.lineIdentifier,
  });

  factory RouteOption.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RouteOptionFromJson(json);

  static List<RouteOption> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RouteOption.fromJson(value),
          )
          .toList();

  static Map<String, RouteOption> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RouteOption.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$RouteOptionToJson(this);
}
