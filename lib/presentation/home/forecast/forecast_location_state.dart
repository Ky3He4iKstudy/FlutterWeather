import 'package:equatable/equatable.dart';

import '../../../domain/entity/forecast_dto.dart';

abstract class ForecastLocationState extends Equatable {
  const ForecastLocationState();

  @override
  List<Object?> get props => [];
}

class ForecastLocationInitialState extends ForecastLocationState {
  const ForecastLocationInitialState();
}

class ForecastLocationLoadingState extends ForecastLocationState {
  const ForecastLocationLoadingState();
}

class ForecastLocationSuccessState extends ForecastLocationState {
  final List<ForecastDto> forecastDtos;

  const ForecastLocationSuccessState({required this.forecastDtos});

  @override
  List<Object?> get props => [forecastDtos];
}

class ForecastLocationErrorState extends ForecastLocationState {
  final String message;

  const ForecastLocationErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}