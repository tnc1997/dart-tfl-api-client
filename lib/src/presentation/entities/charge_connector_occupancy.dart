import '../../internal/serializable.dart';

class ChargeConnectorOccupancy implements Serializable {
  int id;

  String sourceSystemPlaceId;

  String status;

  ChargeConnectorOccupancy({
    this.id,
    this.sourceSystemPlaceId,
    this.status,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'sourceSystemPlaceId': sourceSystemPlaceId,
      'status': status,
    };
  }

  @override
  String toString() {
    return 'ChargeConnectorOccupancy[id=$id, sourceSystemPlaceId=$sourceSystemPlaceId, status=$status]';
  }

  ChargeConnectorOccupancy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    id = json['id'];
    sourceSystemPlaceId = json['sourceSystemPlaceId'];
    status = json['status'];
  }

  static List<ChargeConnectorOccupancy> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<ChargeConnectorOccupancy>()
        : json
            .map((value) => ChargeConnectorOccupancy.fromJson(value))
            .toList();
  }

  static Map<String, ChargeConnectorOccupancy> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, ChargeConnectorOccupancy>()
        : json.map((key, value) =>
            MapEntry(key, ChargeConnectorOccupancy.fromJson(value)));
  }
}
