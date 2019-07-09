import '../message.dart';

class FareBounds {
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

  FareBounds();

  @override
  String toString() {
    return 'FareBounds[id=$id, from=$from, to=$to, via=$via, routeCode=$routeCode, description=$description, displayName=$displayName, operator=$operator, displayOrder=$displayOrder, isPopularFare=$isPopularFare, isPopularTravelCard=$isPopularTravelCard, isTour=$isTour, messages=$messages, ]';
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
      'messages': messages
    };
  }

  static List<FareBounds> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FareBounds>()
        : json.map((value) => FareBounds.fromJson(value)).toList();
  }

  static Map<String, FareBounds> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, FareBounds>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = FareBounds.fromJson(value));
    }
    return map;
  }
}
