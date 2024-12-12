import '../../common/models/identifier.dart';

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
  ) {
    return RouteOption(
      id: json['id'] as String?,
      name: json['name'] as String?,
      directions: (json['directions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lineIdentifier: json['lineIdentifier'] == null
          ? null
          : Identifier.fromJson(json['lineIdentifier'] as Map<String, dynamic>),
    );
  }

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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'directions': directions,
      'lineIdentifier': lineIdentifier,
    };
  }
}
