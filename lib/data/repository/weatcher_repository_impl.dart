import 'package:dartz/dartz.dart';
import 'package:flutter_weather/data/mapper/forecast_container_to_forecast_dto_mapper.dart';
import 'package:flutter_weather/data/mapper/weather_container_to_weather_dto_mapper.dart';
import 'package:flutter_weather/data/model/remote/weather_container_model.dart';
import 'package:flutter_weather/data/remote/service/weather_service.dart';

import '../../core/error/failures.dart';
import '../../domain/entity/forecast_dto.dart';
import '../../domain/entity/weather_dto.dart';
import '../../domain/repository/weather_repository.dart';
import '../model/remote/forecast_container_model.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherService _weatherService;

  WeatherRepositoryImpl(this._weatherService);

  @override
  Future<Either<Failure, WeatherDto>> getWeather(String location) async {
    WeatherContainerModel? model = (await _weatherService.getWeather(location));
    if (model != null) {
      return Right(
          WeatherContainerToWeatherDtoMapper.mapToDto(model, location));
    }
    return Left(ServerFailure());
  }

  @override
  Future<Either<Failure, List<String>>> getLocationSearch(
      String location) async {
    List<String>? model = (await _weatherService.getLocationSearch(location));
    if (model != null) {
      return Right(model);
    }
    return Left(ServerFailure());
  }

  @override
  Future<Either<Failure, ForecastDto>> getForecast(String location) async {
    ForecastContainerModel? model =
        (await _weatherService.getForecast(location));
    if (model != null) {
      return Right(ForecastContainerToForecastDtoMapper.mapToDto(model));
    }
    return Left(ServerFailure());
  }
}
