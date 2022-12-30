// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_for_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastForDayModel _$ForecastForDayModelFromJson(Map<String, dynamic> json) =>
    ForecastForDayModel(
      json['condition'] == null
          ? null
          : ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
      (json['avgtemp_f'] as num?)?.toDouble(),
      (json['maxtemp_f'] as num?)?.toDouble(),
      (json['mintemp_f'] as num?)?.toDouble(),
      (json['avgtemp_c'] as num?)?.toDouble(),
      (json['maxtemp_c'] as num?)?.toDouble(),
      (json['mintemp_c'] as num?)?.toDouble(),
      (json['daily_chance_of_rain'] as num?)?.toDouble(),
      (json['daily_chance_of_snow'] as num?)?.toDouble(),
      (json['totalprecip_in'] as num?)?.toDouble(),
      (json['totalprecip_mm'] as num?)?.toDouble(),
      (json['avghumidity'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ForecastForDayModelToJson(
        ForecastForDayModel instance) =>
    <String, dynamic>{
      'condition': instance.condition,
      'avgtemp_f': instance.avgtemp_f,
      'maxtemp_f': instance.maxtemp_f,
      'mintemp_f': instance.mintemp_f,
      'avgtemp_c': instance.avgtemp_c,
      'maxtemp_c': instance.maxtemp_c,
      'mintemp_c': instance.mintemp_c,
      'daily_chance_of_rain': instance.daily_chance_of_rain,
      'daily_chance_of_snow': instance.daily_chance_of_snow,
      'totalprecip_in': instance.totalprecip_in,
      'totalprecip_mm': instance.totalprecip_mm,
      'avghumidity': instance.avghumidity,
    };
