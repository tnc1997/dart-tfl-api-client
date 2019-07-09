class TicketTime {
  String type;

  String description;

  TicketTime();

  @override
  String toString() {
    return 'TicketTime[type=$type, description=$description, ]';
  }

  TicketTime.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {'type': type, 'description': description};
  }

  static List<TicketTime> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<TicketTime>()
        : json.map((value) => new TicketTime.fromJson(value)).toList();
  }

  static Map<String, TicketTime> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketTime>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new TicketTime.fromJson(value));
    }
    return map;
  }
}
