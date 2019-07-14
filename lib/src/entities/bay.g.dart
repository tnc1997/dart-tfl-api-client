// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bay _$BayFromJson(Map<String, dynamic> json) {
  return Bay(
      bayType: json['bayType'] as String,
      bayCount: json['bayCount'] as int,
      free: json['free'] as int,
      occupied: json['occupied'] as int);
}

Map<String, dynamic> _$BayToJson(Bay instance) => <String, dynamic>{
      'bayType': instance.bayType,
      'bayCount': instance.bayCount,
      'free': instance.free,
      'occupied': instance.occupied
    };
