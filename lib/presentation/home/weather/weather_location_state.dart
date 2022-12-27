import 'package:equatable/equatable.dart';
import 'package:flutter_weather/domain/entity/weather_dto.dart';

abstract class WeatherLocationState extends Equatable {
  const WeatherLocationState();

  @override
  List<Object?> get props => [];
}

class WeatherLocationInitialState extends WeatherLocationState {
  const WeatherLocationInitialState();
}

class WeatherLocationLoadingState extends WeatherLocationState {
  const WeatherLocationLoadingState();
}

class WeatherLocationSuccessState extends WeatherLocationState {
  final WeatherDto weatherDto;

  const WeatherLocationSuccessState({required this.weatherDto});

  @override
  List<Object?> get props => [weatherDto];
}

class WeatherLocationErrorState extends WeatherLocationState {
  final String message;

  const WeatherLocationErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}