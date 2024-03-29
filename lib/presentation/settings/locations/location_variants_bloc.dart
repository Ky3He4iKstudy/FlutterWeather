import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/presentation/settings/locations/location_variants_event.dart';
import 'package:flutter_weather/presentation/settings/locations/location_variants_state.dart';

import '../../../data/local/db/location_db.dart';
import '../../../data/local/repository/local_repository.dart';
import '../../../domain/usecase/get_varians_of_location.dart';
import '../../../domain/usecase/usecase_params.dart';

class LocationVariantsBloc
    extends Bloc<LocationVariantsEvent, LocationVariantsState> {
  final GetVariantsOfLocation _getVariantsOfLocation;
  final LocalRepository local;

  LocationVariantsBloc(this._getVariantsOfLocation, this.local)
      : super(const LocationVariantsInitialState()) {
    on<GetLocationVariantsEvent>(_onGetLocationVariants);
    on<SaveLocationEvent>(_onSaveLocation);
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
    await local.insertLocation(LocationEntity(loc: event.location));
    emit(const LocationSaveSuccessState());
  }
}
