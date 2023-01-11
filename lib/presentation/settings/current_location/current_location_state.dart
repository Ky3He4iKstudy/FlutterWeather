part of 'current_location_bloc.dart';

@immutable
abstract class CurrentLocationState extends Equatable {
  const CurrentLocationState();

  @override
  List<Object?> get props => [];
}

class CurrentLocationInitial extends CurrentLocationState {
  const CurrentLocationInitial();
}

class CurrentLocationGetting extends CurrentLocationState {
  const CurrentLocationGetting();
}

class CurrentLocationGot extends CurrentLocationState {
  final double lat;
  final double long;

  const CurrentLocationGot({required this.lat, required this.long});
}

class CurrentLocationUnavailable extends CurrentLocationState {
  const CurrentLocationUnavailable();
}
