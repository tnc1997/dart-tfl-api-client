import 'route_section.dart';
import 'stop_point.dart';

class Disruption {
  String? id;
  String? category;
  String? type;
  String? categoryDescription;
  String? description;
  String? summary;
  String? additionalInfo;
  DateTime? created;
  DateTime? lastUpdate;
  List<RouteSection>? affectedRoutes;
  List<StopPoint>? affectedStops;
  bool? isBlocking;
  bool? isWholeLine;
  String? closureText;

  Disruption({
    this.id,
    this.category,
    this.type,
    this.categoryDescription,
    this.description,
    this.summary,
    this.additionalInfo,
    this.created,
    this.lastUpdate,
    this.affectedRoutes,
    this.affectedStops,
    this.isBlocking,
    this.isWholeLine,
    this.closureText,
  });

  factory Disruption.fromJson(
    Map<String, dynamic> json,
  ) {
    return Disruption(
      id: json['id'] as String?,
      category: json['category'] as String?,
      type: json['type'] as String?,
      categoryDescription: json['categoryDescription'] as String?,
      description: json['description'] as String?,
      summary: json['summary'] as String?,
      additionalInfo: json['additionalInfo'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      lastUpdate: json['lastUpdate'] == null
          ? null
          : DateTime.parse(json['lastUpdate'] as String),
      affectedRoutes: (json['affectedRoutes'] as List<dynamic>?)
          ?.map((e) => RouteSection.fromJson(e as Map<String, dynamic>))
          .toList(),
      affectedStops: (json['affectedStops'] as List<dynamic>?)
          ?.map((e) => StopPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      isBlocking: json['isBlocking'] as bool?,
      isWholeLine: json['isWholeLine'] as bool?,
      closureText: json['closureText'] as String?,
    );
  }

  static List<Disruption> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Disruption.fromJson(value),
          )
          .toList();

  static Map<String, Disruption> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Disruption.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category': category,
      'type': type,
      'categoryDescription': categoryDescription,
      'description': description,
      'summary': summary,
      'additionalInfo': additionalInfo,
      'created': created?.toIso8601String(),
      'lastUpdate': lastUpdate?.toIso8601String(),
      'affectedRoutes': affectedRoutes,
      'affectedStops': affectedStops,
      'isBlocking': isBlocking,
      'isWholeLine': isWholeLine,
      'closureText': closureText,
    };
  }
}
