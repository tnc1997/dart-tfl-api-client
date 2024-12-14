import '../../common/models/disruption.dart';
import 'foot_path_element.dart';
import 'planned_work.dart';
import 'point.dart';

class PartialRoute {
  Point? origin;
  Point? destination;
  String? meansOfTransport;
  List<Disruption>? disruptions;
  List<PlannedWork>? plannedWorks;
  List<Point>? stopSequence;
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
  ) {
    return PartialRoute(
      origin: json['origin'] == null
          ? null
          : Point.fromJson(json['origin'] as Map<String, dynamic>),
      destination: json['destination'] == null
          ? null
          : Point.fromJson(json['destination'] as Map<String, dynamic>),
      meansOfTransport: json['meansOfTransport'] as String?,
      disruptions: (json['disruptions'] as List<dynamic>?)
          ?.map((e) => Disruption.fromJson(e as Map<String, dynamic>))
          .toList(),
      plannedWorks: (json['plannedWorks'] as List<dynamic>?)
          ?.map((e) => PlannedWork.fromJson(e as Map<String, dynamic>))
          .toList(),
      stopSequence: (json['stopSequence'] as List<dynamic>?)
          ?.map((e) => Point.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String?,
      footPathElement: (json['footPathElement'] as List<dynamic>?)
          ?.map((e) => FootPathElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      meansOfTransportOptions:
          (json['meansOfTransportOptions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'origin': origin,
      'destination': destination,
      'meansOfTransport': meansOfTransport,
      'disruptions': disruptions,
      'plannedWorks': plannedWorks,
      'stopSequence': stopSequence,
      'type': type,
      'footPathElement': footPathElement,
      'meansOfTransportOptions': meansOfTransportOptions,
    };
  }
}
