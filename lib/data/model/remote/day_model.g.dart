// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DayModel _$DayModelFromJson(Map<String, dynamic> json) => DayModel(
      json['date'] as String?,
      json['day'] == null
          ? null
          : ForecastForDayModel.fromJson(json['day'] as Map<String, dynamic>),
      (json['hour'] as List<dynamic>?)
          ?.map((e) => HourModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['astro'] == null
          ? null
          : AstroModel.fromJson(json['astro'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DayModelToJson(DayModel instance) => <String, dynamic>{
      'date': instance.date,
      'day': instance.day,
      'hour': instance.hour,
      'astro': instance.astro,
    };
