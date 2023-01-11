import 'package:flutter_weather/data/mapper/forecast_container_to_forecast_dto_mapper.dart';
import 'package:flutter_weather/data/mapper/weather_container_to_weather_dto_mapper.dart';
import 'package:flutter_weather/data/remote/model/weather_container_model.dart';
import 'package:flutter_weather/data/remote/service/weather_service.dart';

import '../../data/remote/model/forecast_container_model.dart';
import '../entity/forecast_dto.dart';
import '../entity/weather_dto.dart';
import 'weather_repository.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherService _weatherService;

  WeatherRepositoryImpl(this._weatherService);

  @override
  Future<WeatherDto> getWeather(String location) async {
    WeatherContainerModel model = (await _weatherService.getWeather(location));
    return WeatherContainerToWeatherDtoMapper.mapToDto(model, location);
  }

  @override
  Future<List<String>> getLocationSearch(String location) async {
    List<String> model = (await _weatherService.getLocationSearch(location));
    return model;
  }

  @override
  Future<ForecastDto> getForecast(String location) async {
    ForecastContainerModel? model =
        (await _weatherService.getForecast(location));
    return ForecastContainerToForecastDtoMapper.mapToDto(model, location);
  }
}
