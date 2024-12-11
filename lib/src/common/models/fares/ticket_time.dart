import 'package:json_annotation/json_annotation.dart';

part 'ticket_time.g.dart';

@JsonSerializable()
class TicketTime {
  String? type;
  String? description;

  TicketTime({
    this.type,
    this.description,
  });

  factory TicketTime.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TicketTimeFromJson(json);

  static List<TicketTime> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => TicketTime.fromJson(value),
          )
          .toList();

  static Map<String, TicketTime> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          TicketTime.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$TicketTimeToJson(this);
}
