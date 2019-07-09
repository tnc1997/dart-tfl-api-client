class JourneyFareCaveat {
  String text;

  String type;

  JourneyFareCaveat();

  @override
  String toString() {
    return 'FareCaveat[text=$text, type=$type, ]';
  }

  JourneyFareCaveat.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    text = json['text'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {'text': text, 'type': type};
  }

  static List<JourneyFareCaveat> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<JourneyFareCaveat>()
        : json.map((value) => new JourneyFareCaveat.fromJson(value)).toList();
  }

  static Map<String, JourneyFareCaveat> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, JourneyFareCaveat>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new JourneyFareCaveat.fromJson(value));
    }
    return map;
  }
}
