﻿import '../../common/models/geography.dart';
import '../../common/models/identifiable.dart';
import '../../common/models/identifier.dart';

class CycleSuperhighway implements Identifiable {
  String? id;
  String? label;
  String? labelShort;
  Geography? geography;
  bool? segmented;
  DateTime? modified;
  String? status;
  String? routeType;

  CycleSuperhighway({
    this.id,
    this.label,
    this.labelShort,
    this.geography,
    this.segmented,
    this.modified,
    this.status,
    this.routeType,
  });

  factory CycleSuperhighway.fromJson(
    Map<String, dynamic> json,
  ) {
    return CycleSuperhighway(
      id: json['id'] as String?,
      label: json['label'] as String?,
      labelShort: json['labelShort'] as String?,
      geography: json['geography'] == null
          ? null
          : Geography.fromJson(json['geography'] as Map<String, dynamic>),
      segmented: json['segmented'] as bool?,
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
      status: json['status'] as String?,
      routeType: json['routeType'] as String?,
    );
  }

  @override
  Identifier toIdentifier() {
    return Identifier(
      id: id,
      name: '$labelShort:$label',
      uri: '/cyclesuperhighway/$id',
      type: 'CycleSuperhighway',
      routeType: routeType,
      status: status,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'label': label,
      'labelShort': labelShort,
      'geography': geography,
      'segmented': segmented,
      'modified': modified?.toIso8601String(),
      'status': status,
      'routeType': routeType,
    };
  }
}
