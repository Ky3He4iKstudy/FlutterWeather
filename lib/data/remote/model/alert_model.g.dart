// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlertModel _$AlertModelFromJson(Map<String, dynamic> json) => AlertModel(
      json['headline'] as String?,
      json['category'] as String?,
      json['severity'] as String?,
      json['event'] as String?,
      json['effective'] as String?,
      json['expires'] as String?,
      json['desc'] as String?,
    );

Map<String, dynamic> _$AlertModelToJson(AlertModel instance) =>
    <String, dynamic>{
      'headline': instance.headline,
      'category': instance.category,
      'severity': instance.severity,
      'event': instance.event,
      'effective': instance.effective,
      'expires': instance.expires,
      'desc': instance.desc,
    };
