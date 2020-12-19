import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable()
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
  ) =>
      _$MessageFromJson(json);

  static List<Message> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Message.fromJson(value),
          )
          .toList();

  static Map<String, Message> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Message.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
