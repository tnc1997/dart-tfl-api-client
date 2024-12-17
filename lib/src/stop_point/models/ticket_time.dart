class TicketTime {
  String? type;
  String? description;

  TicketTime({
    this.type,
    this.description,
  });

  factory TicketTime.fromJson(
    Map<String, dynamic> json,
  ) {
    return TicketTime(
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
