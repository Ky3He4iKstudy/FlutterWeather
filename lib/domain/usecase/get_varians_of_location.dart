import 'package:dartz/dartz.dart';
import 'package:flutter_weather/core/usecase/usecase.dart';
import 'package:flutter_weather/domain/usecase/usecase_params.dart';

import '../../core/error/failures.dart';
import '../repository/weather_repository.dart';

class GetVariantsOfLocation implements UseCase<List<String>, Params> {
  final WeatherRepository repository;

  GetVariantsOfLocation(this.repository);

  @override
  Future<Either<Failure, List<String>>> call(Params params) async {
    return await repository.getLocationSearch(params.location);
  }
}

