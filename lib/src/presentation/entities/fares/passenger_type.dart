import '../../../internal/serializable.dart';

class PassengerType implements Serializable {
  String type;

  String description;

  String displayName;

  int displayOrder;

  PassengerType({
    this.type,
    this.description,
    this.displayName,
    this.displayOrder,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'description': description,
      'displayName': displayName,
      'displayOrder': displayOrder,
    };
  }

  @override
  String toString() {
    return 'PassengerType[type=$type, description=$description, displayName=$displayName, displayOrder=$displayOrder, ]';
  }

  PassengerType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    type = json['type'];
    description = json['description'];
    displayName = json['displayName'];
    displayOrder = json['displayOrder'];
  }

  static List<PassengerType> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<PassengerType>()
        : json.map((value) => PassengerType.fromJson(value)).toList();
  }

  static Map<String, PassengerType> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, PassengerType>()
        : json
            .map((key, value) => MapEntry(key, PassengerType.fromJson(value)));
  }
}
