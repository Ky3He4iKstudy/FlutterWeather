import 'package:equatable/equatable.dart';

class Params extends Equatable {
  final String location;

  const Params({required this.location});

  @override
  List<Object?> get props => [location];
}
