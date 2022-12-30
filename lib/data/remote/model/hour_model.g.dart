// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hour_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourModel _$HourModelFromJson(Map<String, dynamic> json) => HourModel(
      json['time_epoch'] as int?,
      json['time'] as String?,
      (json['temp_f'] as num?)?.toDouble(),
      (json['temp_c'] as num?)?.toDouble(),
      json['is_day'] as int?,
      json['condition'] == null
          ? null
          : ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
      (json['wind_mph'] as num?)?.toDouble(),
      (json['wind_kph'] as num?)?.toDouble(),
      json['wind_dir'] as String?,
      json['chance_of_rain'] as int?,
      (json['pressure_mb'] as num?)?.toDouble(),
      (json['pressure_in'] as num?)?.toDouble(),
      json['will_it_rain'] as int?,
      (json['chance_of_snow'] as num?)?.toDouble(),
      json['will_it_snow'] as int?,
      (json['precip_mm'] as num?)?.toDouble(),
      (json['precip_in'] as num?)?.toDouble(),
      (json['feelslike_c'] as num?)?.toDouble(),
      (json['feelslike_f'] as num?)?.toDouble(),
      (json['windchill_c'] as num?)?.toDouble(),
      (json['windchill_f'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$HourModelToJson(HourModel instance) => <String, dynamic>{
      'time_epoch': instance.time_epoch,
      'time': instance.time,
      'temp_f': instance.temp_f,
      'temp_c': instance.temp_c,
      'is_day': instance.is_day,
      'condition': instance.condition,
      'wind_mph': instance.wind_mph,
      'wind_kph': instance.wind_kph,
      'wind_dir': instance.wind_dir,
      'chance_of_rain': instance.chance_of_rain,
      'pressure_mb': instance.pressure_mb,
      'pressure_in': instance.pressure_in,
      'will_it_rain': instance.will_it_rain,
      'chance_of_snow': instance.chance_of_snow,
      'will_it_snow': instance.will_it_snow,
      'precip_mm': instance.precip_mm,
      'precip_in': instance.precip_in,
      'feelslike_c': instance.feelslike_c,
      'feelslike_f': instance.feelslike_f,
      'windchill_c': instance.windchill_c,
      'windchill_f': instance.windchill_f,
    };
