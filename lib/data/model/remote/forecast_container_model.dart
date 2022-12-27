import 'package:flutter_weather/data/model/remote/alert_list_model.dart';
import 'package:flutter_weather/data/model/remote/forecast_day_model.dart';
import 'package:flutter_weather/data/model/remote/location_data_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forecast_container_model.g.dart';

@JsonSerializable()
class ForecastContainerModel {
  final LocationDataModel? location;
  final ForecastDayModel? forecast;
  final AlertListModel? alerts;


  ForecastContainerModel(this.location, this.forecast, this.alerts);

  factory ForecastContainerModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastContainerModelFromJson(json);
}


