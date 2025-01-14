﻿import 'street_segment.dart';

class Street {
  String? name;
  String? closure;
  String? directions;
  List<StreetSegment>? segments;
  int? sourceSystemId;
  String? sourceSystemKey;

  Street({
    this.name,
    this.closure,
    this.directions,
    this.segments,
    this.sourceSystemId,
    this.sourceSystemKey,
  });

  factory Street.fromJson(
    Map<String, dynamic> json,
  ) {
    return Street(
      name: json['name'] as String?,
      closure: json['closure'] as String?,
      directions: json['directions'] as String?,
      segments: (json['segments'] as List<dynamic>?)
          ?.map((e) => StreetSegment.fromJson(e as Map<String, dynamic>))
          .toList(),
      sourceSystemId: (json['sourceSystemId'] as num?)?.toInt(),
      sourceSystemKey: json['sourceSystemKey'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'closure': closure,
      'directions': directions,
      'segments': segments,
      'sourceSystemId': sourceSystemId,
      'sourceSystemKey': sourceSystemKey,
    };
  }
}
