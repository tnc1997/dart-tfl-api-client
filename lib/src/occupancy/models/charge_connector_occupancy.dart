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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'sourceSystemPlaceId': sourceSystemPlaceId,
      'status': status,
    };
  }
}
