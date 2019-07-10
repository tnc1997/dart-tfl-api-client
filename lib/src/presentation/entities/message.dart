import '../../internal/serializable.dart';

class Message implements Serializable {
  int bulletOrder;

  bool header;

  String messageText;

  String linkText;

  String url;

  Message({
    this.bulletOrder,
    this.header,
    this.messageText,
    this.linkText,
    this.url,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'bulletOrder': bulletOrder,
      'header': header,
      'messageText': messageText,
      'linkText': linkText,
      'url': url,
    };
  }

  @override
  String toString() {
    return 'Message[bulletOrder=$bulletOrder, header=$header, messageText=$messageText, linkText=$linkText, url=$url]';
  }

  Message.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    bulletOrder = json['bulletOrder'];
    header = json['header'];
    messageText = json['messageText'];
    linkText = json['linkText'];
    url = json['url'];
  }

  static List<Message> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Message>()
        : json.map((value) => Message.fromJson(value)).toList();
  }

  static Map<String, Message> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Message>()
        : json.map((key, value) => MapEntry(key, Message.fromJson(value)));
  }
}
