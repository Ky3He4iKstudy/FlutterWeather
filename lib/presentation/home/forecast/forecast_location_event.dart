import 'package:equatable/equatable.dart';

abstract class ForecastLocationEvent extends Equatable {
  const ForecastLocationEvent();

  @override
  List<Object?> get props => [];
}

class GetForecastLocationEvent extends ForecastLocationEvent {
  const GetForecastLocationEvent();
}

class RemoveLocationEvent extends ForecastLocationEvent {
  final String location;

  const RemoveLocationEvent({required this.location});

  @override
  List<Object?> get props => [location];
}
