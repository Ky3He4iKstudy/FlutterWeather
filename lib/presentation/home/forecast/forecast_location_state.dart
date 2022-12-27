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
  final ForecastDto forecastDto;

  const ForecastLocationSuccessState({required this.forecastDto});

  @override
  List<Object?> get props => [forecastDto];
}

class ForecastLocationErrorState extends ForecastLocationState {
  final String message;

  const ForecastLocationErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}