// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeatherDataModel _$CurrentWeatherDataModelFromJson(
        Map<String, dynamic> json) =>
    CurrentWeatherDataModel(
      (json['temp_c'] as num?)?.toDouble(),
      (json['temp_f'] as num?)?.toDouble(),
      json['is_day'] as int?,
      (json['wind_mph'] as num?)?.toDouble(),
      (json['wind_kph'] as num?)?.toDouble(),
      json['wind_dir'] as String?,
      (json['uv'] as num?)?.toDouble(),
      json['humidity'] as int?,
      (json['feelslike_f'] as num?)?.toDouble(),
      (json['feelslike_c'] as num?)?.toDouble(),
      json['condition'] == null
          ? null
          : ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentWeatherDataModelToJson(
        CurrentWeatherDataModel instance) =>
    <String, dynamic>{
      'temp_c': instance.temp_c,
      'temp_f': instance.temp_f,
      'is_day': instance.is_day,
      'wind_mph': instance.wind_mph,
      'wind_kph': instance.wind_kph,
      'wind_dir': instance.wind_dir,
      'uv': instance.uv,
      'humidity': instance.humidity,
      'feelslike_f': instance.feelslike_f,
      'feelslike_c': instance.feelslike_c,
      'condition': instance.condition,
    };
