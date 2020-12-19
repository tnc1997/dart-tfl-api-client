// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operators.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Operators _$OperatorsFromJson(Map<String, dynamic> json) {
  return Operators(
    operatorList: (json['operatorList'] as List<dynamic>?)
        ?.map((e) => Operator.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$OperatorsToJson(Operators instance) => <String, dynamic>{
      'operatorList': instance.operatorList,
    };
