import '../message.dart';
import '../../../internal/serializable.dart';

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

  @override
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

  @override
  String toString() {
    return 'FareBounds[id=$id, from=$from, to=$to, via=$via, routeCode=$routeCode, description=$description, displayName=$displayName, operator=$operator, displayOrder=$displayOrder, isPopularFare=$isPopularFare, isPopularTravelCard=$isPopularTravelCard, isTour=$isTour, messages=$messages]';
  }

  FareBounds.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    id = json['id'];
    from = json['from'];
    to = json['to'];
    via = json['via'];
    routeCode = json['routeCode'];
    description = json['description'];
    displayName = json['displayName'];
    operator = json['operator'];
    displayOrder = json['displayOrder'];
    isPopularFare = json['isPopularFare'];
    isPopularTravelCard = json['isPopularTravelCard'];
    isTour = json['isTour'];
    messages = Message.listFromJson(json['messages']);
  }

  static List<FareBounds> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<FareBounds>()
        : json.map((value) => FareBounds.fromJson(value)).toList();
  }

  static Map<String, FareBounds> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, FareBounds>()
        : json.map((key, value) => MapEntry(key, FareBounds.fromJson(value)));
  }
}
