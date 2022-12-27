import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/presentation/home/weather/weather_location_event.dart';
import 'package:flutter_weather/presentation/home/weather/weather_location_state.dart';

import '../../../domain/usecase/get_weather_by_location.dart';
import '../../../domain/usecase/usecase_params.dart';

class WeatherLocationBloc
    extends Bloc<WeatherLocationEvent, WeatherLocationState> {
  final GetWeatherByLocation _getWeatherByLocation;

  WeatherLocationBloc(this._getWeatherByLocation)
      : super(const WeatherLocationInitialState()) {
    on<GetWeatherLocationEvent>(_onGetWeatherLocation);
  }

  Future<void> _onGetWeatherLocation(
    GetWeatherLocationEvent event,
    Emitter<WeatherLocationState> emit,
  ) async {
    emit(const WeatherLocationLoadingState());
    await Future.delayed(const Duration(seconds: 2));
    bool isSucceed = Random().nextBool();
    if (isSucceed) {
      final result = await _getWeatherByLocation(const Params(location: 'Moscow'));

      emit(result.fold((l) => null,
          (r) => WeatherLocationSuccessState(weatherDto: r))!);
    } else {
      emit(const WeatherLocationErrorState(
          message: "something went very wrong :("));
    }
  }
}
