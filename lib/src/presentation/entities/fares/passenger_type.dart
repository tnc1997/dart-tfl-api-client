class PassengerType {
  String type;

  String description;

  String displayName;

  int displayOrder;

  PassengerType();

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

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'description': description,
      'displayName': displayName,
      'displayOrder': displayOrder
    };
  }

  static List<PassengerType> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PassengerType>()
        : json.map((value) => new PassengerType.fromJson(value)).toList();
  }

  static Map<String, PassengerType> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PassengerType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PassengerType.fromJson(value));
    }
    return map;
  }
}
