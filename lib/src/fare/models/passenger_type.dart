class PassengerType {
  String? type;
  String? description;
  String? displayName;
  int? displayOrder;

  PassengerType({
    this.type,
    this.description,
    this.displayName,
    this.displayOrder,
  });

  factory PassengerType.fromJson(
    Map<String, dynamic> json,
  ) {
    return PassengerType(
      type: json['type'] as String?,
      description: json['description'] as String?,
      displayName: json['displayName'] as String?,
      displayOrder: (json['displayOrder'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'description': description,
      'displayName': displayName,
      'displayOrder': displayOrder,
    };
  }
}
