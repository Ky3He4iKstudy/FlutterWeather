import 'package:flutter_weather/core/usecase/usecase.dart';
import 'package:flutter_weather/data/local/repository/local_repository.dart';
import 'package:flutter_weather/domain/usecase/usecase_params.dart';

class RemoveLocation implements UseCase<void, Params> {
  final LocalRepository repository;

  RemoveLocation(this.repository);

  @override
  Future<void> call(Params params) async {
    return await repository.deleteLocation(params.location);
  }
}
