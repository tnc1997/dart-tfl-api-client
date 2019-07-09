import './passenger_flow.dart';
import './train_loading.dart';

class Crowding {
  /// Busiest times at a station (static information).
  List<PassengerFlow> passengerFlows = [];

  /// Train Loading on a scale 1-6, 1 being \"Very quiet\" and 6 being \"Exceptionally busy\" (static information).
  List<TrainLoading> trainLoadings = [];

  Crowding();

  @override
  String toString() {
    return 'Crowding[passengerFlows=$passengerFlows, trainLoadings=$trainLoadings, ]';
  }

  Crowding.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    passengerFlows = PassengerFlow.listFromJson(json['passengerFlows']);
    trainLoadings = TrainLoading.listFromJson(json['trainLoadings']);
  }

  Map<String, dynamic> toJson() {
    return {'passengerFlows': passengerFlows, 'trainLoadings': trainLoadings};
  }

  static List<Crowding> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Crowding>()
        : json.map((value) => new Crowding.fromJson(value)).toList();
  }

  static Map<String, Crowding> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Crowding>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Crowding.fromJson(value));
    }
    return map;
  }
}
