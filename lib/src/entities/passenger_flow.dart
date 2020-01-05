import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'passenger_flow.g.dart';

@JsonSerializable()
class PassengerFlow implements Serializable {
  /// The time in 24hr format with 15 minute intervals e.g. 0500-0515, 0515-0530 etc.
  String timeSlice;

  /// The count of passenger flow towards a platform.
  int value;

  PassengerFlow({
    this.timeSlice,
    this.value,
  });

  factory PassengerFlow.fromJson(Map<String, dynamic> json) {
    return _$PassengerFlowFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PassengerFlowToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
