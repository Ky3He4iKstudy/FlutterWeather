part of 'current_location_bloc.dart';

@immutable
abstract class CurrentLocationEvent extends Equatable {
  const CurrentLocationEvent();

  @override
  List<Object?> get props => [];
}

class GetCurrentLocationEvent extends CurrentLocationEvent {
  const GetCurrentLocationEvent();
}
