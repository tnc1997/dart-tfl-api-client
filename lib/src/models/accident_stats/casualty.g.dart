// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'casualty.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Casualty _$CasualtyFromJson(Map<String, dynamic> json) {
  return Casualty(
    age: json['age'] as int?,
    class_: json['class'] as String?,
    severity: json['severity'] as String?,
    mode: json['mode'] as String?,
    ageBand: json['ageBand'] as String?,
  );
}

Map<String, dynamic> _$CasualtyToJson(Casualty instance) => <String, dynamic>{
      'age': instance.age,
      'class': instance.class_,
      'severity': instance.severity,
      'mode': instance.mode,
      'ageBand': instance.ageBand,
    };
