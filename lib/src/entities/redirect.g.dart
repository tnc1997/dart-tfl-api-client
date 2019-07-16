// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redirect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Redirect _$RedirectFromJson(Map<String, dynamic> json) {
  return Redirect(
      shortUrl: json['shortUrl'] as String,
      longUrl: json['longUrl'] as String,
      active: json['active'] as bool);
}

Map<String, dynamic> _$RedirectToJson(Redirect instance) => <String, dynamic>{
      'shortUrl': instance.shortUrl,
      'longUrl': instance.longUrl,
      'active': instance.active
    };
