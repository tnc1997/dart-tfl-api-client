import './fare_details.dart';
import '../message.dart';
import '../../../internal/serializable.dart';

class FaresSection implements Serializable {
  String header;

  int index;

  List<FareDetails> rows;

  List<Message> messages;

  FaresSection({
    this.header,
    this.index,
    this.rows,
    this.messages,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'header': header,
      'index': index,
      'rows': rows,
      'messages': messages,
    };
  }

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

  static List<FaresSection> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<FaresSection>()
        : json.map((value) => FaresSection.fromJson(value)).toList();
  }

  static Map<String, FaresSection> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, FaresSection>()
        : json.map((key, value) => MapEntry(key, FaresSection.fromJson(value)));
  }
}
