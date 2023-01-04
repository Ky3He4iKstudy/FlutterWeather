import 'package:flutter_weather/data/local/db/location_db.dart';
import 'package:flutter_weather/data/local/repository/local_repository.dart';

class LocalRepositoryImpl extends LocalRepository {
  final db = LocationDB();

  @override
  Future<void> deleteLocation(String location) async {
    return db
        .delete(db.locationEntitys)
        .where((tbl) => tbl.loc.equals(location));
  }

  @override
  Future<List<LocationEntity>> getAllLocations() {
    return db.select(db.locationEntitys).get();
  }

  @override
  Future<int> insertLocation(LocationEntity location) {
    return db.into(db.locationEntitys).insert(location);
  }
}
