import 'package:json_annotation/json_annotation.dart';

part 'road_corridor.g.dart';

@JsonSerializable()
class RoadCorridor {
  String? id;
  String? displayName;
  String? group;
  String? statusSeverity;
  String? statusSeverityDescription;
  String? bounds;
  String? envelope;
  DateTime? statusAggregationStartDate;
  DateTime? statusAggregationEndDate;
  String? url;

  RoadCorridor({
    this.id,
    this.displayName,
    this.group,
    this.statusSeverity,
    this.statusSeverityDescription,
    this.bounds,
    this.envelope,
    this.statusAggregationStartDate,
    this.statusAggregationEndDate,
    this.url,
  });

  factory RoadCorridor.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RoadCorridorFromJson(json);

  static List<RoadCorridor> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RoadCorridor.fromJson(value),
          )
          .toList();

  static Map<String, RoadCorridor> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RoadCorridor.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$RoadCorridorToJson(this);
}
