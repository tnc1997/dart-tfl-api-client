class TicketType {
  String? type;
  String? description;

  TicketType({
    this.type,
    this.description,
  });

  factory TicketType.fromJson(
    Map<String, dynamic> json,
  ) {
    return TicketType(
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
