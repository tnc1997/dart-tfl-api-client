import '../../../internal/serializable.dart';

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

  @override
  Map<String, dynamic> toJson() {
    return {
      'originNumberOfBikes': originNumberOfBikes,
      'destinationNumberOfBikes': destinationNumberOfBikes,
      'originNumberOfEmptySlots': originNumberOfEmptySlots,
      'destinationNumberOfEmptySlots': destinationNumberOfEmptySlots,
      'originId': originId,
      'destinationId': destinationId,
    };
  }

  @override
  String toString() {
    return 'CycleHireDockingStationData[originNumberOfBikes=$originNumberOfBikes, destinationNumberOfBikes=$destinationNumberOfBikes, originNumberOfEmptySlots=$originNumberOfEmptySlots, destinationNumberOfEmptySlots=$destinationNumberOfEmptySlots, originId=$originId, destinationId=$destinationId]';
  }

  CycleHireDockingStationData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    originNumberOfBikes = json['originNumberOfBikes'];
    destinationNumberOfBikes = json['destinationNumberOfBikes'];
    originNumberOfEmptySlots = json['originNumberOfEmptySlots'];
    destinationNumberOfEmptySlots = json['destinationNumberOfEmptySlots'];
    originId = json['originId'];
    destinationId = json['destinationId'];
  }

  static List<CycleHireDockingStationData> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<CycleHireDockingStationData>()
        : json
            .map((value) => CycleHireDockingStationData.fromJson(value))
            .toList();
  }

  static Map<String, CycleHireDockingStationData> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, CycleHireDockingStationData>()
        : json.map((key, value) =>
            MapEntry(key, CycleHireDockingStationData.fromJson(value)));
  }
}
