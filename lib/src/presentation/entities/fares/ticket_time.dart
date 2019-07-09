import '../../../internal/serializable.dart';

class TicketTime implements Serializable {
  String type;

  String description;

  TicketTime({
    this.type,
    this.description,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'description': description,
    };
  }

  @override
  String toString() {
    return 'TicketTime[type=$type, description=$description, ]';
  }

  TicketTime.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    type = json['type'];
    description = json['description'];
  }

  static List<TicketTime> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<TicketTime>()
        : json.map((value) => TicketTime.fromJson(value)).toList();
  }

  static Map<String, TicketTime> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, TicketTime>()
        : json.map((key, value) => MapEntry(key, TicketTime.fromJson(value)));
  }
}
