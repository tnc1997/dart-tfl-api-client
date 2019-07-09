import './fare_details.dart';
import '../message.dart';

class FaresSection {
  String header;

  int index;

  List<FareDetails> rows = [];

  List<Message> messages = [];

  FaresSection();

  @override
  String toString() {
    return 'FaresSection[header=$header, index=$index, rows=$rows, messages=$messages, ]';
  }

  FaresSection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    header = json['header'];
    index = json['index'];
    rows = FareDetails.listFromJson(json['rows']);
    messages = Message.listFromJson(json['messages']);
  }

  Map<String, dynamic> toJson() {
    return {
      'header': header,
      'index': index,
      'rows': rows,
      'messages': messages
    };
  }

  static List<FaresSection> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FaresSection>()
        : json.map((value) => FaresSection.fromJson(value)).toList();
  }

  static Map<String, FaresSection> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, FaresSection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = FaresSection.fromJson(value));
    }
    return map;
  }
}
