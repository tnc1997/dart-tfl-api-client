import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'cycle_hire_docking_station_data.g.dart';

@JsonSerializable()
class CycleHireDockingStationData implements Serializable {
  int originNumberOfBikes;

  int destinationNumberOfBikes;

  int originNumberOfEmptySlots;

  int destinationNumberOfEmptySlots;

  String originId;

  String destinationId;

  CycleHireDockingStationData({
    this.originNumberOfBikes,
    this.destinationNumberOfBikes,
    this.originNumberOfEmptySlots,
    this.destinationNumberOfEmptySlots,
    this.originId,
    this.destinationId,
  });

  factory CycleHireDockingStationData.fromJson(Map<String, dynamic> json) {
    return _$CycleHireDockingStationDataFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$CycleHireDockingStationDataToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
