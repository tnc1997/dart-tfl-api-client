import './crowding.dart';
import '../../internal/serializable.dart';

class Identifier implements Serializable {
  String id;

  String name;

  String uri;

  String fullName;

  String type;

  Crowding crowding;

  String routeType;
  // enum routeTypeEnum {  Unknown,  All,  Cycle Superhighways,  Quietways,  Cycleways,  Mini-Hollands,  Central London Grid,  };

  String status;
  // enum statusEnum {  Unknown,  All,  Open,  In Progress,  Planned,  Planned - Subject to feasibility and consultation.,  Not Open,  };

  Identifier({
    this.id,
    this.name,
    this.uri,
    this.fullName,
    this.type,
    this.crowding,
    this.routeType,
    this.status,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'uri': uri,
      'fullName': fullName,
      'type': type,
      'crowding': crowding,
      'routeType': routeType,
      'status': status,
    };
  }

  @override
  String toString() {
    return 'Identifier[id=$id, name=$name, uri=$uri, fullName=$fullName, type=$type, crowding=$crowding, routeType=$routeType, status=$status]';
  }

  Identifier.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    id = json['id'];
    name = json['name'];
    uri = json['uri'];
    fullName = json['fullName'];
    type = json['type'];
    crowding = Crowding.fromJson(json['crowding']);
    routeType = json['routeType'];
    status = json['status'];
  }

  static List<Identifier> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Identifier>()
        : json.map((value) => Identifier.fromJson(value)).toList();
  }

  static Map<String, Identifier> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Identifier>()
        : json.map((key, value) => MapEntry(key, Identifier.fromJson(value)));
  }
}
