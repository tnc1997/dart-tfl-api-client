import 'package:json_annotation/json_annotation.dart';

part 'etl_sub_task_message.g.dart';

@JsonSerializable()
class EtlSubTaskMessage {
  int? operationMessageId;
  String? packagePath;
  String? message;
  DateTime? messageTime;
  String? messageType;
  String? messageSourceType;

  EtlSubTaskMessage({
    this.operationMessageId,
    this.packagePath,
    this.message,
    this.messageTime,
    this.messageType,
    this.messageSourceType,
  });

  factory EtlSubTaskMessage.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$EtlSubTaskMessageFromJson(json);

  static List<EtlSubTaskMessage> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => EtlSubTaskMessage.fromJson(value),
          )
          .toList();

  static Map<String, EtlSubTaskMessage> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          EtlSubTaskMessage.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$EtlSubTaskMessageToJson(this);
}
