import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'message.dart';

part 'fare_bounds.g.dart';

@JsonSerializable()
class FareBounds implements Serializable {
  int id;

  String from;

  String to;

  String via;

  String routeCode;

  String description;

  String displayName;

  String operator;

  int displayOrder;

  bool isPopularFare;

  bool isPopularTravelCard;

  bool isTour;

  List<Message> messages;

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

  factory FareBounds.fromJson(Map<String, dynamic> json) {
    return _$FareBoundsFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$FareBoundsToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
