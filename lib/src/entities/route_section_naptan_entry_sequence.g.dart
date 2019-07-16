// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_section_naptan_entry_sequence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteSectionNaptanEntrySequence _$RouteSectionNaptanEntrySequenceFromJson(
    Map<String, dynamic> json) {
  return RouteSectionNaptanEntrySequence(
      ordinal: json['ordinal'] as int,
      stopPoint: json['stopPoint'] == null
          ? null
          : StopPoint.fromJson(json['stopPoint'] as Map<String, dynamic>));
}

Map<String, dynamic> _$RouteSectionNaptanEntrySequenceToJson(
        RouteSectionNaptanEntrySequence instance) =>
    <String, dynamic>{
      'ordinal': instance.ordinal,
      'stopPoint': instance.stopPoint
    };
