import 'package:json_annotation/json_annotation.dart';

part 'fare.g.dart';

@JsonSerializable()
class Fare1 {
  int? id;
  String? passengerType;
  DateTime? validFrom;
  DateTime? validUntil;
  String? ticketTime;
  String? ticketType;
  String? cost;
  double? cap;
  String? description;
  String? zone;
  String? mode;

  Fare1({
    this.id,
    this.passengerType,
    this.validFrom,
    this.validUntil,
    this.ticketTime,
    this.ticketType,
    this.cost,
    this.cap,
    this.description,
    this.zone,
    this.mode,
  });

  factory Fare1.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$Fare1FromJson(json);

  static List<Fare1> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Fare1.fromJson(value),
          )
          .toList();

  static Map<String, Fare1> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Fare1.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$Fare1ToJson(this);
}
