import 'package:json_annotation/json_annotation.dart';

part 'service_frequency.g.dart';

@JsonSerializable()
class ServiceFrequency {
  double? lowestFrequency;
  double? highestFrequency;

  ServiceFrequency({
    this.lowestFrequency,
    this.highestFrequency,
  });

  factory ServiceFrequency.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ServiceFrequencyFromJson(json);

  static List<ServiceFrequency> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ServiceFrequency.fromJson(value),
          )
          .toList();

  static Map<String, ServiceFrequency> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ServiceFrequency.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ServiceFrequencyToJson(this);
}
