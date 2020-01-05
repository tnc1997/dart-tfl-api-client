import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'service_frequency.g.dart';

@JsonSerializable()
class ServiceFrequency implements Serializable {
  double lowestFrequency;

  double highestFrequency;

  ServiceFrequency({
    this.lowestFrequency,
    this.highestFrequency,
  });

  factory ServiceFrequency.fromJson(Map<String, dynamic> json) {
    return _$ServiceFrequencyFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$ServiceFrequencyToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
