import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/route_section.dart';
import 'package:tfl_api_client/src/models/stop_point.dart';

part 'disruption.g.dart';

@JsonSerializable()
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
  ) =>
      _$DisruptionFromJson(json);

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

  Map<String, dynamic> toJson() => _$DisruptionToJson(this);
}
