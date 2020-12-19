import 'package:json_annotation/json_annotation.dart';

part 'passenger_flow.g.dart';

@JsonSerializable()
class PassengerFlow {
  String? timeSlice;
  int? value;

  PassengerFlow({
    this.timeSlice,
    this.value,
  });

  factory PassengerFlow.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PassengerFlowFromJson(json);

  static List<PassengerFlow> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PassengerFlow.fromJson(value),
          )
          .toList();

  static Map<String, PassengerFlow> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PassengerFlow.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PassengerFlowToJson(this);
}
