class ChargeConnectorOccupancy {
  int? id;
  String? sourceSystemPlaceId;
  String? status;

  ChargeConnectorOccupancy({
    this.id,
    this.sourceSystemPlaceId,
    this.status,
  });

  factory ChargeConnectorOccupancy.fromJson(
    Map<String, dynamic> json,
  ) {
    return ChargeConnectorOccupancy(
      id: (json['id'] as num?)?.toInt(),
      sourceSystemPlaceId: json['sourceSystemPlaceId'] as String?,
      status: json['status'] as String?,
    );
  }

  static List<ChargeConnectorOccupancy> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ChargeConnectorOccupancy.fromJson(value),
          )
          .toList();

  static Map<String, ChargeConnectorOccupancy> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ChargeConnectorOccupancy.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'sourceSystemPlaceId': sourceSystemPlaceId,
      'status': status,
    };
  }
}
