import 'passenger_flow.dart';
import 'train_loading.dart';

class Crowding {
  List<PassengerFlow>? passengerFlows;
  List<TrainLoading>? trainLoadings;

  Crowding({
    this.passengerFlows,
    this.trainLoadings,
  });

  factory Crowding.fromJson(
    Map<String, dynamic> json,
  ) {
    return Crowding(
      passengerFlows: (json['passengerFlows'] as List<dynamic>?)
          ?.map((e) => PassengerFlow.fromJson(e as Map<String, dynamic>))
          .toList(),
      trainLoadings: (json['trainLoadings'] as List<dynamic>?)
          ?.map((e) => TrainLoading.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'passengerFlows': passengerFlows,
      'trainLoadings': trainLoadings,
    };
  }
}
