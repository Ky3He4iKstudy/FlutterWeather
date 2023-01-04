import 'package:equatable/equatable.dart';

abstract class LocationVariantsEvent extends Equatable {
  const LocationVariantsEvent();

  @override
  List<Object?> get props => [];
}

class GetLocationVariantsEvent extends LocationVariantsEvent {
  String location;
  GetLocationVariantsEvent({this.location = "Moscow"});
}

class SaveLocationEvent extends LocationVariantsEvent {
  String location;
  SaveLocationEvent({this.location = "Moscow"});
}