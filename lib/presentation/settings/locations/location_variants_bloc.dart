import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/presentation/settings/locations/location_variants_event.dart';
import 'package:flutter_weather/presentation/settings/locations/location_variants_state.dart';
import 'package:get_it/get_it.dart';

import '../../../data/local/db/location_db.dart';
import '../../../data/local/repository/local_repository.dart';
import '../../../domain/usecase/get_varians_of_location.dart';
import '../../../domain/usecase/usecase_params.dart';

class LocationVariantsBloc
    extends Bloc<LocationVariantsEvent, LocationVariantsState> {
  final GetVariantsOfLocation _getVariantsOfLocation;
  late LocalRepository local;

  LocationVariantsBloc(this._getVariantsOfLocation)
      : super(const LocationVariantsInitialState()) {
    on<GetLocationVariantsEvent>(_onGetLocationVariants);
    on<SaveLocationEvent>(_onSaveLocation);
    local = GetIt.instance.get<LocalRepository>();
  }

  _onGetLocationVariants(
    GetLocationVariantsEvent event,
    Emitter<LocationVariantsState> emit,
  ) async {
    emit(const LocationVariantsLoadingState());
    final res = await _getVariantsOfLocation(Params(location: event.location));
    emit(LocationVariantsSuccessState(res: res));
  }

  _onSaveLocation(
      SaveLocationEvent event, Emitter<LocationVariantsState> emit) async {
    await local.insertLocation(
        LocationEntity(id: 0, cityName: event.location, loc: event.location));
    emit(const LocationSaveSuccessState());
  }
}
