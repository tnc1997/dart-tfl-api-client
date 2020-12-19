import 'package:json_annotation/json_annotation.dart';

part 'fares_period.g.dart';

@JsonSerializable()
class FaresPeriod {
  int? id;
  DateTime? startDate;
  DateTime? viewableDate;
  DateTime? endDate;
  bool? isFuture;

  FaresPeriod({
    this.id,
    this.startDate,
    this.viewableDate,
    this.endDate,
    this.isFuture,
  });

  factory FaresPeriod.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FaresPeriodFromJson(json);

  static List<FaresPeriod> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => FaresPeriod.fromJson(value),
          )
          .toList();

  static Map<String, FaresPeriod> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          FaresPeriod.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$FaresPeriodToJson(this);
}
