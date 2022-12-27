import 'package:flutter_weather/data/model/remote/current_weather_data_model.dart';
import 'package:flutter_weather/data/model/remote/location_data_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_container_model.g.dart';

@JsonSerializable()
class WeatherContainerModel {
  final LocationDataModel? location;
  final CurrentWeatherDataModel? current;


  WeatherContainerModel(this.location, this.current);

  factory WeatherContainerModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherContainerModelFromJson(json);
}