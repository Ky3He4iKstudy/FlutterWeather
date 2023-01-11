import 'package:flutter_weather/core/usecase/usecase.dart';
import 'package:flutter_weather/domain/usecase/usecase_params.dart';

import '../repository/weather_repository.dart';

class GetVariantsOfLocation implements UseCase<List<String>, Params> {
  final WeatherRepository repository;

  GetVariantsOfLocation(this.repository);

  @override
  Future<List<String>> call(Params params) async {
    return await repository.getLocationSearch(params.location);
  }
}
