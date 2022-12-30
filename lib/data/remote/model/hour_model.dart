import 'package:flutter_weather/data/remote/model/condition_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hour_model.g.dart';

@JsonSerializable()
class HourModel {
  final int? time_epoch;
  final String? time;
  final double? temp_f;
  final double? temp_c;
  final int? is_day;
  final ConditionModel? condition;
  final double? wind_mph;
  final double? wind_kph;
  final String? wind_dir;
  final int? chance_of_rain;
  final double? pressure_mb;
  final double? pressure_in;
  final int? will_it_rain;
  final double? chance_of_snow;
  final int? will_it_snow;
  final double? precip_mm;
  final double? precip_in;
  final double? feelslike_c;
  final double? feelslike_f;
  final double? windchill_c;
  final double? windchill_f;


  HourModel(this.time_epoch, this.time, this.temp_f, this.temp_c, this.is_day,
      this.condition, this.wind_mph, this.wind_kph, this.wind_dir,
      this.chance_of_rain, this.pressure_mb, this.pressure_in,
      this.will_it_rain, this.chance_of_snow, this.will_it_snow, this.precip_mm,
      this.precip_in, this.feelslike_c, this.feelslike_f, this.windchill_c,
      this.windchill_f);

  factory HourModel.fromJson(Map<String, dynamic> json) =>
      _$HourModelFromJson(json);
}