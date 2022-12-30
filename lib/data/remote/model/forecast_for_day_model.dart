import 'package:flutter_weather/data/remote/model/condition_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forecast_for_day_model.g.dart';

@JsonSerializable()
class ForecastForDayModel {
  final ConditionModel? condition;
  final double? avgtemp_f;
  final double? maxtemp_f;
  final double? mintemp_f;
  final double? avgtemp_c;
  final double? maxtemp_c;
  final double? mintemp_c;
  final double? daily_chance_of_rain;
  final double? daily_chance_of_snow;
  final double? totalprecip_in;
  final double? totalprecip_mm;
  final double? avghumidity;


  ForecastForDayModel(this.condition, this.avgtemp_f, this.maxtemp_f,
      this.mintemp_f, this.avgtemp_c, this.maxtemp_c, this.mintemp_c,
      this.daily_chance_of_rain, this.daily_chance_of_snow, this.totalprecip_in,
      this.totalprecip_mm, this.avghumidity);

  factory ForecastForDayModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastForDayModelFromJson(json);
}