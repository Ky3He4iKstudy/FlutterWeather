import 'package:equatable/equatable.dart';

class Params extends Equatable {
  final String location;

  const Params({this.location = ""});

  @override
  List<Object?> get props => [location];
}
