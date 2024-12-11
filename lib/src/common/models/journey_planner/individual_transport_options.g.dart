// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'individual_transport_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IndividualTransportOptions _$IndividualTransportOptionsFromJson(
    Map<String, dynamic> json) {
  return IndividualTransportOptions(
    walkingSpeed: json['walkingSpeed'] as String?,
    cycleType: json['cycleType'] as String?,
    wheelchair: json['wheelchair'] as bool?,
    arrivalMeansOfTransport: json['arrivalMeansOfTransport'] as String?,
    arrivalMeansOfTransportMaximumTime:
        json['arrivalMeansOfTransportMaximumTime'] as int?,
    departureMeansOfTransport: json['departureMeansOfTransport'] as String?,
    departureMeansOfTransportMaximumTime:
        json['departureMeansOfTransportMaximumTime'] as int?,
    meansOfTransport: json['meansOfTransport'] as String?,
    meansOfTransportMaximumTime: json['meansOfTransportMaximumTime'] as int?,
  );
}

Map<String, dynamic> _$IndividualTransportOptionsToJson(
        IndividualTransportOptions instance) =>
    <String, dynamic>{
      'walkingSpeed': instance.walkingSpeed,
      'cycleType': instance.cycleType,
      'wheelchair': instance.wheelchair,
      'arrivalMeansOfTransport': instance.arrivalMeansOfTransport,
      'arrivalMeansOfTransportMaximumTime':
          instance.arrivalMeansOfTransportMaximumTime,
      'departureMeansOfTransport': instance.departureMeansOfTransport,
      'departureMeansOfTransportMaximumTime':
          instance.departureMeansOfTransportMaximumTime,
      'meansOfTransport': instance.meansOfTransport,
      'meansOfTransportMaximumTime': instance.meansOfTransportMaximumTime,
    };
