// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapItem _$MapItemFromJson(Map<String, dynamic> json) {
  return MapItem(
    uri: json['uri'] as String?,
    type: json['type'] as String?,
    size: json['size'] as int?,
  );
}

Map<String, dynamic> _$MapItemToJson(MapItem instance) => <String, dynamic>{
      'uri': instance.uri,
      'type': instance.type,
      'size': instance.size,
    };
