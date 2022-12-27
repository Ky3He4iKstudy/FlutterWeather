import 'package:drift/drift.dart';
import 'package:flutter_weather/data/local/location_entity.dart';

import 'location_db.dart';

part 'location_dao.g.dart';

@DriftAccessor(tables: [LocationEntitys])
class LocationDao extends DatabaseAccessor<LocationDB> with _$LocationDaoMixin {
  LocationDao(LocationDB db) : super(db);

  Future<List<LocationEntity>> getAllTodoEntries() => select(locationEntitys).get();
  Stream<List<LocationEntity>> watchAllTodoEntries() => select(locationEntitys).watch();

  Future insertEntity(LocationEntitysCompanion entry) => into(locationEntitys).insertOnConflictUpdate(entry);

  Future updateTodo(LocationEntity entry) => update(locationEntitys).replace(entry);

  Future deleteTodo(int id) => (delete(locationEntitys)..where((t) => t.id.equals(id))).go();
}
