import './passenger_flow.dart';
import './train_loading.dart';
import '../../internal/serializable.dart';

class Crowding implements Serializable {
  /// The busiest times at a station (static information).
  List<PassengerFlow> passengerFlows;

  /// The train Loading on a scale 1-6, with 1 being "Very quiet" and 6 being "Exceptionally busy" (static information).
  List<TrainLoading> trainLoadings;

  Crowding({
    this.passengerFlows,
    this.trainLoadings,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'passengerFlows': passengerFlows,
      'trainLoadings': trainLoadings,
    };
  }

  @override
  String toString() {
    return 'Crowding[passengerFlows=$passengerFlows, trainLoadings=$trainLoadings, ]';
  }

  Crowding.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    passengerFlows = PassengerFlow.listFromJson(json['passengerFlows']);
    trainLoadings = TrainLoading.listFromJson(json['trainLoadings']);
  }

  static List<Crowding> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Crowding>()
        : json.map((value) => Crowding.fromJson(value)).toList();
  }

  static Map<String, Crowding> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Crowding>()
        : json.map((key, value) => MapEntry(key, Crowding.fromJson(value)));
  }
}
