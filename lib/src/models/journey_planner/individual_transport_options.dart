import 'package:json_annotation/json_annotation.dart';

part 'individual_transport_options.g.dart';

@JsonSerializable()
class IndividualTransportOptions {
  String? walkingSpeed;
  String? cycleType;
  bool? wheelchair;
  String? arrivalMeansOfTransport;
  int? arrivalMeansOfTransportMaximumTime;
  String? departureMeansOfTransport;
  int? departureMeansOfTransportMaximumTime;
  String? meansOfTransport;
  int? meansOfTransportMaximumTime;

  IndividualTransportOptions({
    this.walkingSpeed,
    this.cycleType,
    this.wheelchair,
    this.arrivalMeansOfTransport,
    this.arrivalMeansOfTransportMaximumTime,
    this.departureMeansOfTransport,
    this.departureMeansOfTransportMaximumTime,
    this.meansOfTransport,
    this.meansOfTransportMaximumTime,
  });

  factory IndividualTransportOptions.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IndividualTransportOptionsFromJson(json);

  static List<IndividualTransportOptions> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => IndividualTransportOptions.fromJson(value),
          )
          .toList();

  static Map<String, IndividualTransportOptions> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          IndividualTransportOptions.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$IndividualTransportOptionsToJson(this);
}
