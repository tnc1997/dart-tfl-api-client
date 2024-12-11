import 'package:json_annotation/json_annotation.dart';

part 'journey_vector.g.dart';

@JsonSerializable()
class JourneyVector {
  String? from;
  String? to;
  String? via;
  String? uri;

  JourneyVector({
    this.from,
    this.to,
    this.via,
    this.uri,
  });

  factory JourneyVector.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$JourneyVectorFromJson(json);

  static List<JourneyVector> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => JourneyVector.fromJson(value),
          )
          .toList();

  static Map<String, JourneyVector> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          JourneyVector.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$JourneyVectorToJson(this);
}
