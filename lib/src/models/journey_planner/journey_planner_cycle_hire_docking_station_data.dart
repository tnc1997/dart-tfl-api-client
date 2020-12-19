import 'package:json_annotation/json_annotation.dart';

part 'journey_planner_cycle_hire_docking_station_data.g.dart';

@JsonSerializable()
class JourneyPlannerCycleHireDockingStationData {
  int? originNumberOfBikes;
  int? destinationNumberOfBikes;
  int? originNumberOfEmptySlots;
  int? destinationNumberOfEmptySlots;
  String? originId;
  String? destinationId;

  JourneyPlannerCycleHireDockingStationData({
    this.originNumberOfBikes,
    this.destinationNumberOfBikes,
    this.originNumberOfEmptySlots,
    this.destinationNumberOfEmptySlots,
    this.originId,
    this.destinationId,
  });

  factory JourneyPlannerCycleHireDockingStationData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$JourneyPlannerCycleHireDockingStationDataFromJson(json);

  static List<JourneyPlannerCycleHireDockingStationData> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) =>
                JourneyPlannerCycleHireDockingStationData.fromJson(value),
          )
          .toList();

  static Map<String, JourneyPlannerCycleHireDockingStationData> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          JourneyPlannerCycleHireDockingStationData.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() =>
      _$JourneyPlannerCycleHireDockingStationDataToJson(this);
}
