import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'ticket_time.g.dart';

@JsonSerializable()
class TicketTime implements Serializable {
  String type;

  String description;

  TicketTime({
    this.type,
    this.description,
  });

  factory TicketTime.fromJson(Map<String, dynamic> json) {
    return _$TicketTimeFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TicketTimeToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
