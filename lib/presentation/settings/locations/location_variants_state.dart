import 'package:equatable/equatable.dart';
import 'package:flutter_weather/domain/entity/weather_dto.dart';

abstract class LocationVariantsState extends Equatable {
  const LocationVariantsState();

  @override
  List<Object?> get props => [];
}

class LocationVariantsInitialState extends LocationVariantsState {
  const LocationVariantsInitialState();
}

class LocationVariantsLoadingState extends LocationVariantsState {
  const LocationVariantsLoadingState();
}

class LocationVariantsSuccessState extends LocationVariantsState {
  final List<String> res;

  const LocationVariantsSuccessState({required this.res});

  @override
  List<Object?> get props => [res];
}

class LocationSaveSuccessState extends LocationVariantsState {
  const LocationSaveSuccessState();
}

class LocationVariantsErrorState extends LocationVariantsState {
  final String message;

  const LocationVariantsErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}