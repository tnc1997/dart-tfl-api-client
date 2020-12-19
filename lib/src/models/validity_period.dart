import 'package:json_annotation/json_annotation.dart';

part 'validity_period.g.dart';

@JsonSerializable()
class ValidityPeriod {
  DateTime? fromDate;
  DateTime? toDate;
  bool? isNow;

  ValidityPeriod({
    this.fromDate,
    this.toDate,
    this.isNow,
  });

  factory ValidityPeriod.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ValidityPeriodFromJson(json);

  static List<ValidityPeriod> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ValidityPeriod.fromJson(value),
          )
          .toList();

  static Map<String, ValidityPeriod> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ValidityPeriod.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ValidityPeriodToJson(this);
}
