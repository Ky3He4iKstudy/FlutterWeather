import 'package:flutter_weather/core/usecase/usecase.dart';
import 'package:flutter_weather/domain/entity/forecast_dto.dart';
import 'package:flutter_weather/domain/usecase/usecase_params.dart';

import '../repository/weather_repository.dart';

class GetForecastByLocation implements UseCase<ForecastDto, Params> {
  final WeatherRepository repository;

  GetForecastByLocation(this.repository);

  @override
  Future<ForecastDto> call(Params params) async {
    return await repository.getForecast(params.location);
  }
}
