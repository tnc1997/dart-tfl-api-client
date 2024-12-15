class Service {
  String? id;
  String? lineId;
  DateTime? validTo;

  Service({
    this.id,
    this.lineId,
    this.validTo,
  });

  factory Service.fromJson(
    Map<String, dynamic> json,
  ) {
    return Service(
      id: json['id'] as String?,
      lineId: json['lineId'] as String?,
      validTo: json['validTo'] == null
          ? null
          : DateTime.parse(json['validTo'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'lineId': lineId,
      'validTo': validTo?.toIso8601String(),
    };
  }
}
