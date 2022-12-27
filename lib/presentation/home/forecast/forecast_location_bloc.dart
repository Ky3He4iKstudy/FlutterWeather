import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/data/local/location_db.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/usecase/get_forecast_by_location.dart';
import '../../../domain/usecase/usecase_params.dart';
import 'forecast_location_event.dart';
import 'forecast_location_state.dart';

class ForecastLocationBloc
    extends Bloc<ForecastLocationEvent, ForecastLocationState> {
  final GetForecastByLocation _getForecastByLocation;
  late LocationDB locationDB;

  ForecastLocationBloc(this._getForecastByLocation)
      : super(const ForecastLocationInitialState()) {
    on<GetForecastLocationEvent>(_onGetForecastLocation);
    locationDB = GetIt.instance.get<LocationDB>();
  }

  Future<void> _onGetForecastLocation(
    GetForecastLocationEvent event,
    Emitter<ForecastLocationState> emit,
  ) async {
    emit(const ForecastLocationLoadingState());
    await Future.delayed(const Duration(seconds: 2));
    bool isSucceed = Random().nextBool();
    if (isSucceed) {
      final result = await _getForecastByLocation(const Params(location: 'Moscow'));

      emit(result.fold((l) => null,
          (r) => ForecastLocationSuccessState(forecastDto: r))!);
    } else {
      emit(const ForecastLocationErrorState(
          message: "something went very wrong :("));
    }
  }
}