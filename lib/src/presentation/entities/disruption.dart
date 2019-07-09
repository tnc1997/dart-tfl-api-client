import './route_section.dart';
import './stop_point.dart';

class Disruption {
  /// Gets or sets the category of this disruption.
  String category;
  // enum categoryEnum {  Undefined,  RealTime,  PlannedWork,  Information,  Event,  Crowding,  StatusAlert,  };

  /// Gets or sets the disruption type of this disruption.
  String type;

  /// Gets or sets the description of the category.
  String categoryDescription;

  /// Gets or sets the description of this disruption.
  String description;

  /// Gets or sets the summary of this disruption.
  String summary;

  /// Gets or sets the additionalInfo of this disruption.
  String additionalInfo;

  /// Gets or sets the date/time when this disruption was created.
  DateTime created;

  /// Gets or sets the date/time when this disruption was last updated.
  DateTime lastUpdate;

  /// Gets or sets the routes affected by this disruption.
  List<RouteSection> affectedRoutes = [];

  /// Gets or sets the stops affected by this disruption.
  List<StopPoint> affectedStops = [];

  /// Gets or sets the text describing the closure type.
  String closureText;

  Disruption();

  @override
  String toString() {
    return 'Disruption[category=$category, type=$type, categoryDescription=$categoryDescription, description=$description, summary=$summary, additionalInfo=$additionalInfo, created=$created, lastUpdate=$lastUpdate, affectedRoutes=$affectedRoutes, affectedStops=$affectedStops, closureText=$closureText, ]';
  }

  Disruption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    category = json['category'];
    type = json['type'];
    categoryDescription = json['categoryDescription'];
    description = json['description'];
    summary = json['summary'];
    additionalInfo = json['additionalInfo'];
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    lastUpdate =
        json['lastUpdate'] == null ? null : DateTime.parse(json['lastUpdate']);
    affectedRoutes = RouteSection.listFromJson(json['affectedRoutes']);
    affectedStops = StopPoint.listFromJson(json['affectedStops']);
    closureText = json['closureText'];
  }

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'type': type,
      'categoryDescription': categoryDescription,
      'description': description,
      'summary': summary,
      'additionalInfo': additionalInfo,
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'lastUpdate':
          lastUpdate == null ? '' : lastUpdate.toUtc().toIso8601String(),
      'affectedRoutes': affectedRoutes,
      'affectedStops': affectedStops,
      'closureText': closureText
    };
  }

  static List<Disruption> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Disruption>()
        : json.map((value) => Disruption.fromJson(value)).toList();
  }

  static Map<String, Disruption> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, Disruption>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = Disruption.fromJson(value));
    }
    return map;
  }
}
