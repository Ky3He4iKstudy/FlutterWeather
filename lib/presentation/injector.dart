import 'package:flutter_weather/data/local/location_db.dart';
import 'package:flutter_weather/domain/usecase/get_forecast_by_location.dart';
import 'package:flutter_weather/domain/usecase/get_varians_of_location.dart';
import 'package:flutter_weather/presentation/home/forecast/forecast_location_bloc.dart';
import 'package:flutter_weather/presentation/settings/locations/location_variants_bloc.dart';
import 'package:get_it/get_it.dart';

import '../data/remote/service/weather_service.dart';
import '../domain/repository/weatcher_repository_impl.dart';
import '../domain/repository/weather_repository.dart';
import '../domain/usecase/get_weather_by_location.dart';
import 'home/weather/weather_location_bloc.dart';

final injector = GetIt.instance;

void initializeDependencies() {
  injector.registerSingleton(WeatherService());

  injector.registerSingleton<WeatherRepository>(
    WeatherRepositoryImpl(injector()),
  );

  injector.registerSingleton<GetWeatherByLocation>(
      GetWeatherByLocation(injector()));

  injector.registerSingleton<GetForecastByLocation>(
      GetForecastByLocation(injector()));

  injector.registerSingleton<GetVariantsOfLocation>(
      GetVariantsOfLocation(injector()));

  // injector.registerSingleton<LocationDB> (
  //     LocationDB()
  // );
  injector.registerSingleton<LocationDB>(LocationDB());

  injector.registerFactory<WeatherLocationBloc>(
          () => WeatherLocationBloc(injector()));
  injector.registerFactory<ForecastLocationBloc>(
          () => ForecastLocationBloc(injector()));
  injector.registerFactory<LocationVariantsBloc>(
          () => LocationVariantsBloc(injector()));
}
