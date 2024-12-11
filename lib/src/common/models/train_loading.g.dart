// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'train_loading.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrainLoading _$TrainLoadingFromJson(Map<String, dynamic> json) {
  return TrainLoading(
    line: json['line'] as String?,
    lineDirection: json['lineDirection'] as String?,
    platformDirection: json['platformDirection'] as String?,
    direction: json['direction'] as String?,
    naptanTo: json['naptanTo'] as String?,
    timeSlice: json['timeSlice'] as String?,
    value: json['value'] as int?,
  );
}

Map<String, dynamic> _$TrainLoadingToJson(TrainLoading instance) =>
    <String, dynamic>{
      'line': instance.line,
      'lineDirection': instance.lineDirection,
      'platformDirection': instance.platformDirection,
      'direction': instance.direction,
      'naptanTo': instance.naptanTo,
      'timeSlice': instance.timeSlice,
      'value': instance.value,
    };
