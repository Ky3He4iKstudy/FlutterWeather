// @Serializable
// data class ForecastDay(
// val forecastday: List<Day>
// )
//
import 'package:json_annotation/json_annotation.dart';

import 'day_model.dart';

part 'forecast_day_model.g.dart';

@JsonSerializable()
class ForecastDayModel {
  final List<DayModel>? forecastday;

  ForecastDayModel(this.forecastday);

  factory ForecastDayModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayModelFromJson(json);
}