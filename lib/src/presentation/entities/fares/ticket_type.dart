class TicketType {
  String type;

  String description;

  TicketType();

  @override
  String toString() {
    return 'TicketType[type=$type, description=$description, ]';
  }

  TicketType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {'type': type, 'description': description};
  }

  static List<TicketType> listFromJson(List<dynamic> json) {
    return json == null
        ? List<TicketType>()
        : json.map((value) => TicketType.fromJson(value)).toList();
  }

  static Map<String, TicketType> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, TicketType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = TicketType.fromJson(value));
    }
    return map;
  }
}
