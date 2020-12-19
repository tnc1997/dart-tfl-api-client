// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop_point_sequence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StopPointSequence _$StopPointSequenceFromJson(Map<String, dynamic> json) {
  return StopPointSequence(
    lineId: json['lineId'] as String?,
    lineName: json['lineName'] as String?,
    direction: json['direction'] as String?,
    branchId: json['branchId'] as int?,
    nextBranchIds: (json['nextBranchIds'] as List<dynamic>?)
        ?.map((e) => e as int)
        .toList(),
    prevBranchIds: (json['prevBranchIds'] as List<dynamic>?)
        ?.map((e) => e as int)
        .toList(),
    stopPoint: (json['stopPoint'] as List<dynamic>?)
        ?.map((e) => MatchedStop.fromJson(e as Map<String, dynamic>))
        .toList(),
    serviceType: json['serviceType'] as String?,
  );
}

Map<String, dynamic> _$StopPointSequenceToJson(StopPointSequence instance) =>
    <String, dynamic>{
      'lineId': instance.lineId,
      'lineName': instance.lineName,
      'direction': instance.direction,
      'branchId': instance.branchId,
      'nextBranchIds': instance.nextBranchIds,
      'prevBranchIds': instance.prevBranchIds,
      'stopPoint': instance.stopPoint,
      'serviceType': instance.serviceType,
    };
