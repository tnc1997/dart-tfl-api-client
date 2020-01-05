import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/route_section.dart';
import 'package:tfl_api_client/src/entities/stop_point.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'line_disruption.g.dart';

@JsonSerializable()
class LineDisruption implements Serializable {
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
  List<RouteSection> affectedRoutes;

  /// Gets or sets the stops affected by this disruption.
  List<StopPoint> affectedStops;

  /// Gets or sets the text describing the closure type.
  String closureText;

  LineDisruption({
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
    this.closureText,
  });

  factory LineDisruption.fromJson(Map<String, dynamic> json) {
    return _$LineDisruptionFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$LineDisruptionToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
