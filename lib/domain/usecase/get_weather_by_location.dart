import 'package:dartz/dartz.dart';
import 'package:flutter_weather/core/usecase/usecase.dart';
import 'package:flutter_weather/domain/entity/weather_dto.dart';
import 'package:flutter_weather/domain/usecase/usecase_params.dart';

import '../../core/error/failures.dart';
import '../repository/weather_repository.dart';

class GetWeatherByLocation implements UseCase<WeatherDto, Params> {
  final WeatherRepository repository;

  GetWeatherByLocation(this.repository);

  @override
  Future<Either<Failure, WeatherDto>> call(Params params) async {
    return await repository.getWeather(params.location);
  }
}
