import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'message.g.dart';

@JsonSerializable()
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

  factory Message.fromJson(Map<String, dynamic> json) {
    return _$MessageFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$MessageToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
