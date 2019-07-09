class ChargeConnectorOccupancy {
  int id;

  String sourceSystemPlaceId;

  String status;

  ChargeConnectorOccupancy();

  @override
  String toString() {
    return 'ChargeConnectorOccupancy[id=$id, sourceSystemPlaceId=$sourceSystemPlaceId, status=$status, ]';
  }

  ChargeConnectorOccupancy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    sourceSystemPlaceId = json['sourceSystemPlaceId'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'sourceSystemPlaceId': sourceSystemPlaceId,
      'status': status
    };
  }

  static List<ChargeConnectorOccupancy> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ChargeConnectorOccupancy>()
        : json
            .map((value) => ChargeConnectorOccupancy.fromJson(value))
            .toList();
  }

  static Map<String, ChargeConnectorOccupancy> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, ChargeConnectorOccupancy>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = ChargeConnectorOccupancy.fromJson(value));
    }
    return map;
  }
}
