import 'package:flutter_weather/domain/entity/forecast_dto.dart';

import '../entity/weather_dto.dart';

abstract class WeatherRepository {
  Future<WeatherDto> getWeather(String location);

  Future<List<String>> getLocationSearch(String location);

  Future<ForecastDto> getForecast(String location);
}
