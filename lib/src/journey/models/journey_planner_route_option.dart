import '../../common/models/identifiable.dart';
import '../../common/models/identifier.dart';

class JourneyPlannerRouteOption implements Identifiable {
  String? id;
  String? name;
  List<String>? directions;
  Identifier? lineIdentifier;
  String? direction;

  JourneyPlannerRouteOption({
    this.id,
    this.name,
    this.directions,
    this.lineIdentifier,
    this.direction,
  });

  factory JourneyPlannerRouteOption.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerRouteOption(
      id: json['id'] as String?,
      name: json['name'] as String?,
      directions: (json['directions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lineIdentifier: json['lineIdentifier'] == null
          ? null
          : Identifier.fromJson(json['lineIdentifier'] as Map<String, dynamic>),
      direction: json['direction'] as String?,
    );
  }

  @override
  Identifier toIdentifier() {
    return Identifier(
      id: id,
      name: name,
      uri: '/routeoption/$id',
      type: 'RouteOption',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'directions': directions,
      'lineIdentifier': lineIdentifier,
      'direction': direction,
    };
  }
}
