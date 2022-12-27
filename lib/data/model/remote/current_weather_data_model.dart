import 'package:flutter_weather/data/model/remote/condition_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'current_weather_data_model.g.dart';

@JsonSerializable()
class CurrentWeatherDataModel {
  final double? temp_c;
  final double? temp_f;
  final int? is_day;
  final double? wind_mph;
  final double? wind_kph;
  final String? wind_dir;
  final double? uv;
  final int? humidity;
  final double? feelslike_f;
  final double? feelslike_c;
  final ConditionModel? condition;


  CurrentWeatherDataModel(this.temp_c, this.temp_f, this.is_day, this.wind_mph,
      this.wind_kph, this.wind_dir, this.uv, this.humidity, this.feelslike_f,
      this.feelslike_c, this.condition);

  factory CurrentWeatherDataModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherDataModelFromJson(json);
}