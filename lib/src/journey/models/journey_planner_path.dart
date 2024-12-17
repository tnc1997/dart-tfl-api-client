import '../../common/models/identifier.dart';
import 'journey_planner_elevation.dart';

class JourneyPlannerPath {
  String? lineString;
  List<Identifier>? stopPoints;
  List<JourneyPlannerElevation>? elevation;

  JourneyPlannerPath({
    this.lineString,
    this.stopPoints,
    this.elevation,
  });

  factory JourneyPlannerPath.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerPath(
      lineString: json['lineString'] as String?,
      stopPoints: (json['stopPoints'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      elevation: (json['elevation'] as List<dynamic>?)
          ?.map((e) =>
              JourneyPlannerElevation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lineString': lineString,
      'stopPoints': stopPoints,
      'elevation': elevation,
    };
  }
}
