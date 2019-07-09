class Message {
  int bulletOrder;

  bool header;

  String messageText;

  String linkText;

  String url;

  Message();

  @override
  String toString() {
    return 'Message[bulletOrder=$bulletOrder, header=$header, messageText=$messageText, linkText=$linkText, url=$url, ]';
  }

  Message.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    bulletOrder = json['bulletOrder'];
    header = json['header'];
    messageText = json['messageText'];
    linkText = json['linkText'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'bulletOrder': bulletOrder,
      'header': header,
      'messageText': messageText,
      'linkText': linkText,
      'url': url
    };
  }

  static List<Message> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Message>()
        : json.map((value) => Message.fromJson(value)).toList();
  }

  static Map<String, Message> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, Message>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = Message.fromJson(value));
    }
    return map;
  }
}
