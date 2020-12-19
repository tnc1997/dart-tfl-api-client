import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/message.dart';

part 'fare_bounds.g.dart';

@JsonSerializable()
class FareBounds {
  int? id;
  String? from;
  String? to;
  String? via;
  String? routeCode;
  String? description;
  String? displayName;
  String? operator;
  int? displayOrder;
  bool? isPopularFare;
  bool? isPopularTravelCard;
  bool? isTour;
  List<Message>? messages;

  FareBounds({
    this.id,
    this.from,
    this.to,
    this.via,
    this.routeCode,
    this.description,
    this.displayName,
    this.operator,
    this.displayOrder,
    this.isPopularFare,
    this.isPopularTravelCard,
    this.isTour,
    this.messages,
  });

  factory FareBounds.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FareBoundsFromJson(json);

  static List<FareBounds> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => FareBounds.fromJson(value),
          )
          .toList();

  static Map<String, FareBounds> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          FareBounds.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$FareBoundsToJson(this);
}
