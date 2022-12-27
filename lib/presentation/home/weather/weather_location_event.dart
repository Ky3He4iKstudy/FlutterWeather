import 'package:equatable/equatable.dart';

abstract class WeatherLocationEvent extends Equatable {
  const WeatherLocationEvent();

  @override
  List<Object?> get props => [];
}

class GetWeatherLocationEvent extends WeatherLocationEvent {
  const GetWeatherLocationEvent();
}