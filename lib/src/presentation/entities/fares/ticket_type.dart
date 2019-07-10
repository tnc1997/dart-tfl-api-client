import '../../../internal/serializable.dart';

class TicketType implements Serializable {
  String type;

  String description;

  TicketType({
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
    return 'TicketType[type=$type, description=$description]';
  }

  TicketType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    type = json['type'];
    description = json['description'];
  }

  static List<TicketType> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<TicketType>()
        : json.map((value) => TicketType.fromJson(value)).toList();
  }

  static Map<String, TicketType> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, TicketType>()
        : json.map((key, value) => MapEntry(key, TicketType.fromJson(value)));
  }
}
