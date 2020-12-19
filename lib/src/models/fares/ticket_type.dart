import 'package:json_annotation/json_annotation.dart';

part 'ticket_type.g.dart';

@JsonSerializable()
class TicketType {
  String? type;
  String? description;

  TicketType({
    this.type,
    this.description,
  });

  factory TicketType.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TicketTypeFromJson(json);

  static List<TicketType> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => TicketType.fromJson(value),
          )
          .toList();

  static Map<String, TicketType> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          TicketType.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$TicketTypeToJson(this);
}
