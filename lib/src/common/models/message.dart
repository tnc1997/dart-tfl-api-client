class Message {
  int? bulletOrder;
  bool? header;
  String? messageText;
  String? linkText;
  String? url;

  Message({
    this.bulletOrder,
    this.header,
    this.messageText,
    this.linkText,
    this.url,
  });

  factory Message.fromJson(
    Map<String, dynamic> json,
  ) {
    return Message(
      bulletOrder: (json['bulletOrder'] as num?)?.toInt(),
      header: json['header'] as bool?,
      messageText: json['messageText'] as String?,
      linkText: json['linkText'] as String?,
      url: json['url'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bulletOrder': bulletOrder,
      'header': header,
      'messageText': messageText,
      'linkText': linkText,
      'url': url,
    };
  }
}
