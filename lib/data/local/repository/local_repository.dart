import '../db/location_db.dart';

abstract class LocalRepository {
  Future<List<LocationEntity>> getAllLocations();

  Future<void> deleteLocation(String location);

  Future<int> insertLocation(LocationEntity location);
}
