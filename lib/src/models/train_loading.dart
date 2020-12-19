import 'package:json_annotation/json_annotation.dart';

part 'train_loading.g.dart';

@JsonSerializable()
class TrainLoading {
  String? line;
  String? lineDirection;
  String? platformDirection;
  String? direction;
  String? naptanTo;
  String? timeSlice;
  int? value;

  TrainLoading({
    this.line,
    this.lineDirection,
    this.platformDirection,
    this.direction,
    this.naptanTo,
    this.timeSlice,
    this.value,
  });

  factory TrainLoading.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TrainLoadingFromJson(json);

  static List<TrainLoading> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => TrainLoading.fromJson(value),
          )
          .toList();

  static Map<String, TrainLoading> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          TrainLoading.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$TrainLoadingToJson(this);
}
