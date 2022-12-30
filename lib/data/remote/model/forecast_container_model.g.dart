// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_container_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastContainerModel _$ForecastContainerModelFromJson(
        Map<String, dynamic> json) =>
    ForecastContainerModel(
      json['location'] == null
          ? null
          : LocationDataModel.fromJson(
              json['location'] as Map<String, dynamic>),
      json['forecast'] == null
          ? null
          : ForecastDayModel.fromJson(json['forecast'] as Map<String, dynamic>),
      json['alerts'] == null
          ? null
          : AlertListModel.fromJson(json['alerts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForecastContainerModelToJson(
        ForecastContainerModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'forecast': instance.forecast,
      'alerts': instance.alerts,
    };
