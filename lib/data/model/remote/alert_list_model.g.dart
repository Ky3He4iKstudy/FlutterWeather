// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlertListModel _$AlertListModelFromJson(Map<String, dynamic> json) =>
    AlertListModel(
      (json['alert'] as List<dynamic>?)
          ?.map((e) => AlertModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlertListModelToJson(AlertListModel instance) =>
    <String, dynamic>{
      'alert': instance.alert,
    };
