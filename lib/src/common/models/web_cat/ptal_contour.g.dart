// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ptal_contour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PtalContour _$PtalContourFromJson(Map<String, dynamic> json) {
  return PtalContour(
    ptalValue: json['ptalValue'] as String?,
    contourGeometry: json['contourGeometry'] as String?,
  );
}

Map<String, dynamic> _$PtalContourToJson(PtalContour instance) =>
    <String, dynamic>{
      'ptalValue': instance.ptalValue,
      'contourGeometry': instance.contourGeometry,
    };
