// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astro_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AstroModel _$AstroModelFromJson(Map<String, dynamic> json) => AstroModel(
      json['sunrise'] as String?,
      json['sunset'] as String?,
      json['moon_phase'] as String?,
    );

Map<String, dynamic> _$AstroModelToJson(AstroModel instance) =>
    <String, dynamic>{
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moon_phase': instance.moon_phase,
    };
