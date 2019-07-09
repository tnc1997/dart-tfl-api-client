import './obstacle.dart';
import './path.dart';
import './planned_work.dart';
import './route_option.dart';
import '../disruption.dart';
import '../identifier.dart';
import '../instruction.dart';
import '../point.dart';

class Leg {
  int duration;

  String speed;

  Instruction instruction;

  List<Obstacle> obstacles;

  DateTime departureTime;

  DateTime arrivalTime;

  Point departurePoint;

  Point arrivalPoint;

  Path path;

  List<RouteOption> routeOptions;

  Identifier mode;

  List<Disruption> disruptions;

  List<PlannedWork> plannedWorks;

  double distance;

  bool isDisrupted;

  bool hasFixedLocations;

  Leg();

  @override
  String toString() {
    return 'Leg[duration=$duration, speed=$speed, instruction=$instruction, obstacles=$obstacles, departureTime=$departureTime, arrivalTime=$arrivalTime, departurePoint=$departurePoint, arrivalPoint=$arrivalPoint, path=$path, routeOptions=$routeOptions, mode=$mode, disruptions=$disruptions, plannedWorks=$plannedWorks, distance=$distance, isDisrupted=$isDisrupted, hasFixedLocations=$hasFixedLocations, ]';
  }

  Leg.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    duration = json['duration'];
    speed = json['speed'];
    instruction = new Instruction.fromJson(json['instruction']);
    obstacles = Obstacle.listFromJson(json['obstacles']);
    departureTime = json['departureTime'] == null
        ? null
        : DateTime.parse(json['departureTime']);
    arrivalTime = json['arrivalTime'] == null
        ? null
        : DateTime.parse(json['arrivalTime']);
    departurePoint = new Point.fromJson(json['departurePoint']);
    arrivalPoint = new Point.fromJson(json['arrivalPoint']);
    path = new Path.fromJson(json['path']);
    routeOptions = RouteOption.listFromJson(json['routeOptions']);
    mode = new Identifier.fromJson(json['mode']);
    disruptions = Disruption.listFromJson(json['disruptions']);
    plannedWorks = PlannedWork.listFromJson(json['plannedWorks']);
    distance = json['distance'];
    isDisrupted = json['isDisrupted'];
    hasFixedLocations = json['hasFixedLocations'];
  }

  Map<String, dynamic> toJson() {
    return {
      'duration': duration,
      'speed': speed,
      'instruction': instruction,
      'obstacles': obstacles,
      'departureTime':
          departureTime == null ? '' : departureTime.toUtc().toIso8601String(),
      'arrivalTime':
          arrivalTime == null ? '' : arrivalTime.toUtc().toIso8601String(),
      'departurePoint': departurePoint,
      'arrivalPoint': arrivalPoint,
      'path': path,
      'routeOptions': routeOptions,
      'mode': mode,
      'disruptions': disruptions,
      'plannedWorks': plannedWorks,
      'distance': distance,
      'isDisrupted': isDisrupted,
      'hasFixedLocations': hasFixedLocations
    };
  }

  static List<Leg> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Leg>()
        : json.map((value) => new Leg.fromJson(value)).toList();
  }

  static Map<String, Leg> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Leg>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Leg.fromJson(value));
    }
    return map;
  }
}
