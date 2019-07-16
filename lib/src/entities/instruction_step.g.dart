// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instruction_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstructionStep _$InstructionStepFromJson(Map<String, dynamic> json) {
  return InstructionStep(
      description: json['description'] as String,
      turnDirection: json['turnDirection'] as String,
      streetName: json['streetName'] as String,
      distance: json['distance'] as int,
      cumulativeDistance: json['cumulativeDistance'] as int,
      skyDirection: json['skyDirection'] as int,
      skyDirectionDescription: json['skyDirectionDescription'] as String,
      cumulativeTravelTime: json['cumulativeTravelTime'] as int,
      latitude: (json['latitude'] as num)?.toDouble(),
      longitude: (json['longitude'] as num)?.toDouble(),
      pathAttribute: json['pathAttribute'] == null
          ? null
          : PathAttribute.fromJson(
              json['pathAttribute'] as Map<String, dynamic>),
      descriptionHeading: json['descriptionHeading'] as String,
      trackType: json['trackType'] as String);
}

Map<String, dynamic> _$InstructionStepToJson(InstructionStep instance) =>
    <String, dynamic>{
      'description': instance.description,
      'turnDirection': instance.turnDirection,
      'streetName': instance.streetName,
      'distance': instance.distance,
      'cumulativeDistance': instance.cumulativeDistance,
      'skyDirection': instance.skyDirection,
      'skyDirectionDescription': instance.skyDirectionDescription,
      'cumulativeTravelTime': instance.cumulativeTravelTime,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'pathAttribute': instance.pathAttribute,
      'descriptionHeading': instance.descriptionHeading,
      'trackType': instance.trackType
    };
