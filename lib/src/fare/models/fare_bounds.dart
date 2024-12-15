import 'message.dart';

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
  ) {
    return FareBounds(
      id: (json['id'] as num?)?.toInt(),
      from: json['from'] as String?,
      to: json['to'] as String?,
      via: json['via'] as String?,
      routeCode: json['routeCode'] as String?,
      description: json['description'] as String?,
      displayName: json['displayName'] as String?,
      operator: json['operator'] as String?,
      displayOrder: (json['displayOrder'] as num?)?.toInt(),
      isPopularFare: json['isPopularFare'] as bool?,
      isPopularTravelCard: json['isPopularTravelCard'] as bool?,
      isTour: json['isTour'] as bool?,
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'from': from,
      'to': to,
      'via': via,
      'routeCode': routeCode,
      'description': description,
      'displayName': displayName,
      'operator': operator,
      'displayOrder': displayOrder,
      'isPopularFare': isPopularFare,
      'isPopularTravelCard': isPopularTravelCard,
      'isTour': isTour,
      'messages': messages,
    };
  }
}
