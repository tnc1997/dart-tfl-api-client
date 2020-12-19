import 'package:json_annotation/json_annotation.dart';

part 'subscription.g.dart';

@JsonSerializable()
class Subscription {
  String? id;
  String? connectionId;
  String? roomName;
  String? naptanId;
  String? lineId;
  String? source;
  DateTime? timestamp;
  DateTime? timeToLive;

  Subscription({
    this.id,
    this.connectionId,
    this.roomName,
    this.naptanId,
    this.lineId,
    this.source,
    this.timestamp,
    this.timeToLive,
  });

  factory Subscription.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SubscriptionFromJson(json);

  static List<Subscription> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Subscription.fromJson(value),
          )
          .toList();

  static Map<String, Subscription> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Subscription.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);
}
