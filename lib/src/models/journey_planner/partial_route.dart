import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/disruption.dart';
import 'package:tfl_api_client/src/models/journey_planner/foot_path_element.dart';
import 'package:tfl_api_client/src/models/journey_planner/planned_work.dart';
import 'package:tfl_api_client/src/models/journey_planner/point.dart';

part 'partial_route.g.dart';

@JsonSerializable()
class PartialRoute {
  Point1? origin;
  Point1? destination;
  String? meansOfTransport;
  List<Disruption>? disruptions;
  List<PlannedWork>? plannedWorks;
  List<Point1>? stopSequence;
  String? type;
  List<FootPathElement>? footPathElement;
  List<String>? meansOfTransportOptions;

  PartialRoute({
    this.origin,
    this.destination,
    this.meansOfTransport,
    this.disruptions,
    this.plannedWorks,
    this.stopSequence,
    this.type,
    this.footPathElement,
    this.meansOfTransportOptions,
  });

  factory PartialRoute.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PartialRouteFromJson(json);

  static List<PartialRoute> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PartialRoute.fromJson(value),
          )
          .toList();

  static Map<String, PartialRoute> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PartialRoute.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PartialRouteToJson(this);
}
