import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/passenger_flow.dart';
import 'package:tfl_api_client/src/entities/train_loading.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'crowding.g.dart';

@JsonSerializable()
class Crowding implements Serializable {
  /// The busiest times at a station (static information).
  List<PassengerFlow> passengerFlows;

  /// The train Loading on a scale 1-6, with 1 being "Very quiet" and 6 being "Exceptionally busy" (static information).
  List<TrainLoading> trainLoadings;

  Crowding({
    this.passengerFlows,
    this.trainLoadings,
  });

  factory Crowding.fromJson(Map<String, dynamic> json) {
    return _$CrowdingFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$CrowdingToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
