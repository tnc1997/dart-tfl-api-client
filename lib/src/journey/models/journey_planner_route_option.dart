import '../../common/models/identifiable.dart';
import '../../common/models/identifier.dart';

class JourneyPlannerRouteOption implements Identifiable {
  String? id;
  String? name;
  List<String>? directions;
  Identifier? lineIdentifier;

  JourneyPlannerRouteOption({
    this.id,
    this.name,
    this.directions,
    this.lineIdentifier,
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
    };
  }
}
