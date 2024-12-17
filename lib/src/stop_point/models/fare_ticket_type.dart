class FareTicketType {
  String? type;
  String? description;

  FareTicketType({
    this.type,
    this.description,
  });

  factory FareTicketType.fromJson(
    Map<String, dynamic> json,
  ) {
    return FareTicketType(
      type: json['type'] as String?,
      description: json['description'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'description': description,
    };
  }
}
