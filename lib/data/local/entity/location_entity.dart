import 'package:drift/drift.dart';

class LocationEntitys extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get cityName => text()();
  TextColumn get loc => text()();
}
