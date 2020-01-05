import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'ticket_type.g.dart';

@JsonSerializable()
class TicketType implements Serializable {
  String type;

  String description;

  TicketType({
    this.type,
    this.description,
  });

  factory TicketType.fromJson(Map<String, dynamic> json) {
    return _$TicketTypeFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TicketTypeToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
