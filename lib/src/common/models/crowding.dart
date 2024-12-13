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

  static List<Crowding> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Crowding.fromJson(value),
          )
          .toList();

  static Map<String, Crowding> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Crowding.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'passengerFlows': passengerFlows,
      'trainLoadings': trainLoadings,
    };
  }
}
