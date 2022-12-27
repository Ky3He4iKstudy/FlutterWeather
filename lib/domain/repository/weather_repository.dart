import 'package:dartz/dartz.dart';
import 'package:flutter_weather/core/error/failures.dart';
import 'package:flutter_weather/domain/entity/forecast_dto.dart';

import '../entity/weather_dto.dart';


abstract class WeatherRepository {
  Future<Either<Failure, WeatherDto>> getWeather(String location);
  Future<Either<Failure, List<String>>> getLocationSearch(String location);
  Future<Either<Failure, ForecastDto>> getForecast(String location);
}
