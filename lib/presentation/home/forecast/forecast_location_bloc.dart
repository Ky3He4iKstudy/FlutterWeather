import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../data/local/repository/local_repository.dart';
import '../../../domain/entity/forecast_dto.dart';
import '../../../domain/usecase/get_forecast_by_location.dart';
import '../../../domain/usecase/usecase_params.dart';
import 'forecast_location_event.dart';
import 'forecast_location_state.dart';

class ForecastLocationBloc
    extends Bloc<ForecastLocationEvent, ForecastLocationState> {
  final GetForecastByLocation _getForecastByLocation;
  late LocalRepository local;

  ForecastLocationBloc(this._getForecastByLocation)
      : super(const ForecastLocationInitialState()) {
    on<GetForecastLocationEvent>(_onGetForecastLocation);
    local = GetIt.instance.get<LocalRepository>();
  }

  Future<void> _onGetForecastLocation(
    GetForecastLocationEvent event,
    Emitter<ForecastLocationState> emit,
  ) async {
    emit(const ForecastLocationLoadingState());
    var locations = await local.getAllLocations();
    var ff = List<ForecastDto>.empty();
    for (var loc in locations) {
      ff.add(await _getForecastByLocation(Params(location: loc.loc)));
    }
    emit(ForecastLocationSuccessState(forecastDtos: ff));
  }
}
