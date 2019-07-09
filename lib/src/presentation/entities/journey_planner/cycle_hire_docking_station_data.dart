class CycleHireDockingStationData {
  int originNumberOfBikes;

  int destinationNumberOfBikes;

  int originNumberOfEmptySlots;

  int destinationNumberOfEmptySlots;

  String originId;

  String destinationId;

  CycleHireDockingStationData();

  @override
  String toString() {
    return 'CycleHireDockingStationData[originNumberOfBikes=$originNumberOfBikes, destinationNumberOfBikes=$destinationNumberOfBikes, originNumberOfEmptySlots=$originNumberOfEmptySlots, destinationNumberOfEmptySlots=$destinationNumberOfEmptySlots, originId=$originId, destinationId=$destinationId, ]';
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

  Map<String, dynamic> toJson() {
    return {
      'originNumberOfBikes': originNumberOfBikes,
      'destinationNumberOfBikes': destinationNumberOfBikes,
      'originNumberOfEmptySlots': originNumberOfEmptySlots,
      'destinationNumberOfEmptySlots': destinationNumberOfEmptySlots,
      'originId': originId,
      'destinationId': destinationId
    };
  }

  static List<CycleHireDockingStationData> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CycleHireDockingStationData>()
        : json
            .map((value) => new CycleHireDockingStationData.fromJson(value))
            .toList();
  }

  static Map<String, CycleHireDockingStationData> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CycleHireDockingStationData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CycleHireDockingStationData.fromJson(value));
    }
    return map;
  }
}
