import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/presentation/settings/locations/location_variants_event.dart';
import 'package:flutter_weather/presentation/settings/locations/location_variants_state.dart';
import 'package:get_it/get_it.dart';

import '../../../data/local/location_db.dart';
import '../../../domain/usecase/get_weather_by_location.dart';
import '../../../domain/usecase/usecase_params.dart';

class LocationVariantsBloc
    extends Bloc<LocationVariantsEvent, LocationVariantsState> {
  final GetWeatherByLocation _getWeatherByLocation;
  // late final LocationDB _locationDB;

  LocationVariantsBloc(this._getWeatherByLocation)
      : super(const LocationVariantsInitialState()) {
    on<GetLocationVariantsEvent>(_onGetLocationVariants);

    // _locationDB = GetIt.instance.get<LocationDB>();
    // on<LocationDB>(_locationDB);
  }

  Future<void> _onGetLocationVariants(
    GetLocationVariantsEvent event,
    Emitter<LocationVariantsState> emit,
  ) async {
    emit(const LocationVariantsLoadingState());
    await Future.delayed(const Duration(seconds: 2));
    bool isSucceed = Random().nextBool();
    if (isSucceed) {
      final result =
          await _getWeatherByLocation(const Params(location: 'Moscow'));

      emit(result.fold(
          (l) => null, (r) => LocationVariantsSuccessState(weatherDto: r))!);
    } else {
      emit(const LocationVariantsErrorState(
          message: "something went very wrong :("));
    }
  }
}
