class ReferencedStop {
  String? stopId;
  String? stopPointId;
  String? name;

  ReferencedStop({
    this.stopId,
    this.stopPointId,
    this.name,
  });

  factory ReferencedStop.fromJson(
    Map<String, dynamic> json,
  ) {
    return ReferencedStop(
      stopId: json['stopId'] as String?,
      stopPointId: json['stopPointId'] as String?,
      name: json['name'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'stopId': stopId,
      'stopPointId': stopPointId,
      'name': name,
    };
  }
}
