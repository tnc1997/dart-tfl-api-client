import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/passenger_flow.dart';
import 'package:tfl_api_client/src/models/train_loading.dart';

part 'crowding.g.dart';

@JsonSerializable()
class Crowding {
  List<PassengerFlow>? passengerFlows;
  List<TrainLoading>? trainLoadings;

  Crowding({
    this.passengerFlows,
    this.trainLoadings,
  });

  factory Crowding.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CrowdingFromJson(json);

  static List<Crowding> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Crowding.fromJson(value),
          )
          .toList();

  static Map<String, Crowding> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Crowding.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$CrowdingToJson(this);
}
