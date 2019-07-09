import '../../../internal/serializable.dart';

class JourneyFareCaveat implements Serializable {
  String text;

  String type;

  JourneyFareCaveat({
    this.text,
    this.type,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'FareCaveat[text=$text, type=$type, ]';
  }

  JourneyFareCaveat.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    text = json['text'];
    type = json['type'];
  }

  static List<JourneyFareCaveat> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<JourneyFareCaveat>()
        : json.map((value) => JourneyFareCaveat.fromJson(value)).toList();
  }

  static Map<String, JourneyFareCaveat> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, JourneyFareCaveat>()
        : json.map(
            (key, value) => MapEntry(key, JourneyFareCaveat.fromJson(value)));
  }
}
