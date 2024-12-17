class FareTicketTime {
  String? type;
  String? description;

  FareTicketTime({
    this.type,
    this.description,
  });

  factory FareTicketTime.fromJson(
    Map<String, dynamic> json,
  ) {
    return FareTicketTime(
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
