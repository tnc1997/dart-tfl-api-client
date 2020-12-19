import 'package:json_annotation/json_annotation.dart';

part 'road_disruption_tdm_extension.g.dart';

@JsonSerializable()
class RoadDisruptionTdmExtension {
  String? roadDisruptionId;
  String? relatedDisruptionId;
  String? tdmCategory;
  String? timeframe;
  DateTime? publishStartDate;
  DateTime? publishEndDate;

  RoadDisruptionTdmExtension({
    this.roadDisruptionId,
    this.relatedDisruptionId,
    this.tdmCategory,
    this.timeframe,
    this.publishStartDate,
    this.publishEndDate,
  });

  factory RoadDisruptionTdmExtension.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RoadDisruptionTdmExtensionFromJson(json);

  static List<RoadDisruptionTdmExtension> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RoadDisruptionTdmExtension.fromJson(value),
          )
          .toList();

  static Map<String, RoadDisruptionTdmExtension> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RoadDisruptionTdmExtension.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$RoadDisruptionTdmExtensionToJson(this);
}
