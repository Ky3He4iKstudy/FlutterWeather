import 'package:json_annotation/json_annotation.dart';

import 'astro_model.dart';
import 'forecast_for_day_model.dart';
import 'hour_model.dart';

part 'day_model.g.dart';

@JsonSerializable()
class DayModel {
  final String? date;
  final ForecastForDayModel? day;
  final List<HourModel>? hour;
  final AstroModel? astro;


  DayModel(this.date, this.day, this.hour, this.astro);

  factory DayModel.fromJson(Map<String, dynamic> json) =>
      _$DayModelFromJson(json);
}