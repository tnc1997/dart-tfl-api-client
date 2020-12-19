// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instruction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Instruction _$InstructionFromJson(Map<String, dynamic> json) {
  return Instruction(
    summary: json['summary'] as String?,
    detailed: json['detailed'] as String?,
    steps: (json['steps'] as List<dynamic>?)
        ?.map((e) => InstructionStep.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$InstructionToJson(Instruction instance) =>
    <String, dynamic>{
      'summary': instance.summary,
      'detailed': instance.detailed,
      'steps': instance.steps,
    };
