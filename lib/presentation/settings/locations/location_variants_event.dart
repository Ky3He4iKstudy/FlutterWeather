import 'package:equatable/equatable.dart';

abstract class LocationVariantsEvent extends Equatable {
  const LocationVariantsEvent();

  @override
  List<Object?> get props => [];
}

class GetLocationVariantsEvent extends LocationVariantsEvent {
  const GetLocationVariantsEvent();
}