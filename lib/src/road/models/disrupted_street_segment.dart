import 'road_disruption_schedule.dart';

class DisruptedStreetSegment {
  String? streetName;
  String? closure;
  String? directions;
  String? lineString;
  String? distruptedStreetId;
  String? disruptionId;
  double? startLat;
  double? startLon;
  double? endLat;
  double? endLon;
  String? severity;
  String? category;
  String? subCategory;
  String? comments;
  DateTime? startDateTime;
  DateTime? endDateTime;
  String? levelOfInterest;
  String? location;
  List<RoadDisruptionSchedule>? recurringSchedules;

  DisruptedStreetSegment({
    this.streetName,
    this.closure,
    this.directions,
    this.lineString,
    this.distruptedStreetId,
    this.disruptionId,
    this.startLat,
    this.startLon,
    this.endLat,
    this.endLon,
    this.severity,
    this.category,
    this.subCategory,
    this.comments,
    this.startDateTime,
    this.endDateTime,
    this.levelOfInterest,
    this.location,
    this.recurringSchedules,
  });

  factory DisruptedStreetSegment.fromJson(
    Map<String, dynamic> json,
  ) {
    return DisruptedStreetSegment(
      streetName: json['streetName'] as String?,
      closure: json['closure'] as String?,
      directions: json['directions'] as String?,
      lineString: json['lineString'] as String?,
      distruptedStreetId: json['distruptedStreetId'] as String?,
      disruptionId: json['disruptionId'] as String?,
      startLat: (json['startLat'] as num?)?.toDouble(),
      startLon: (json['startLon'] as num?)?.toDouble(),
      endLat: (json['endLat'] as num?)?.toDouble(),
      endLon: (json['endLon'] as num?)?.toDouble(),
      severity: json['severity'] as String?,
      category: json['category'] as String?,
      subCategory: json['subCategory'] as String?,
      comments: json['comments'] as String?,
      startDateTime: json['startDateTime'] == null
          ? null
          : DateTime.parse(json['startDateTime'] as String),
      endDateTime: json['endDateTime'] == null
          ? null
          : DateTime.parse(json['endDateTime'] as String),
      levelOfInterest: json['levelOfInterest'] as String?,
      location: json['location'] as String?,
      recurringSchedules: (json['recurringSchedules'] as List<dynamic>?)
          ?.map(
              (e) => RoadDisruptionSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  static List<DisruptedStreetSegment> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => DisruptedStreetSegment.fromJson(value),
          )
          .toList();

  static Map<String, DisruptedStreetSegment> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          DisruptedStreetSegment.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'streetName': streetName,
      'closure': closure,
      'directions': directions,
      'lineString': lineString,
      'distruptedStreetId': distruptedStreetId,
      'disruptionId': disruptionId,
      'startLat': startLat,
      'startLon': startLon,
      'endLat': endLat,
      'endLon': endLon,
      'severity': severity,
      'category': category,
      'subCategory': subCategory,
      'comments': comments,
      'startDateTime': startDateTime?.toIso8601String(),
      'endDateTime': endDateTime?.toIso8601String(),
      'levelOfInterest': levelOfInterest,
      'location': location,
      'recurringSchedules': recurringSchedules,
    };
  }
}
