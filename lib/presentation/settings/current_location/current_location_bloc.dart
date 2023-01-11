import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_weather/domain/usecase/get_current_location.dart';
import 'package:flutter_weather/domain/usecase/usecase_params.dart';
import 'package:meta/meta.dart';

part 'current_location_event.dart';

part 'current_location_state.dart';

class CurrentLocationBloc
    extends Bloc<CurrentLocationEvent, CurrentLocationState> {
  final GetCurrentLocation _getCurrentLocation;

  CurrentLocationBloc(this._getCurrentLocation)
      : super(const CurrentLocationInitial()) {
    on<GetCurrentLocationEvent>((event, emit) async {
      emit(const CurrentLocationGetting());
      var loc = await _getCurrentLocation(const Params());
      if (loc == null) {
        emit(const CurrentLocationUnavailable());
      } else {
        emit(CurrentLocationGot(lat: loc.latitude, long: loc.longitude));
      }
    });
  }
}
