import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/crowding.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'identifier.g.dart';

@JsonSerializable()
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

  factory Identifier.fromJson(Map<String, dynamic> json) {
    return _$IdentifierFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$IdentifierToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
