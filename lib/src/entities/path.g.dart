// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'path.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Path _$PathFromJson(Map<String, dynamic> json) {
  return Path(
      lineString: json['lineString'] as String,
      stopPoints: (json['stopPoints'] as List)
          ?.map((e) =>
              e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      elevation: (json['elevation'] as List)
          ?.map((e) =>
              e == null ? null : Elevation.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$PathToJson(Path instance) => <String, dynamic>{
      'lineString': instance.lineString,
      'stopPoints': instance.stopPoints,
      'elevation': instance.elevation
    };
