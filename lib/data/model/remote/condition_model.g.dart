// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConditionModel _$ConditionModelFromJson(Map<String, dynamic> json) =>
    ConditionModel(
      json['text'] as String?,
      json['icon'] as String?,
      json['code'] as int?,
    );

Map<String, dynamic> _$ConditionModelToJson(ConditionModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'code': instance.code,
    };
