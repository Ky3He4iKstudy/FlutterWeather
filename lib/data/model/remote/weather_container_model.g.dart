// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_container_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherContainerModel _$WeatherContainerModelFromJson(
        Map<String, dynamic> json) =>
    WeatherContainerModel(
      json['location'] == null
          ? null
          : LocationDataModel.fromJson(
              json['location'] as Map<String, dynamic>),
      json['current'] == null
          ? null
          : CurrentWeatherDataModel.fromJson(
              json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherContainerModelToJson(
        WeatherContainerModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };
