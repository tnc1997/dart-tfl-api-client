// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wrapper _$WrapperFromJson(Map<String, dynamic> json) {
  return Wrapper(
    operators: json['operators'] == null
        ? null
        : Operators.fromJson(json['operators'] as Map<String, dynamic>),
    header: json['header'] == null
        ? null
        : Header.fromJson(json['header'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WrapperToJson(Wrapper instance) => <String, dynamic>{
      'operators': instance.operators,
      'header': instance.header,
    };
