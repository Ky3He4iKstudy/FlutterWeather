// Opens the connection to SQLite DB:
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_weather/data/local/db/location_dao.dart';
import 'package:flutter_weather/data/local/entity/location_entity.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'location_db.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

// Actual CRUD operation is here:
@DriftDatabase(tables: [LocationEntitys], daos: [LocationDao])
class LocationDB extends _$LocationDB {
  LocationDB() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(onCreate: (Migrator m) {
        return m.createAll();
      }, onUpgrade: (Migrator m, int from, int to) async {
        m.drop(locationEntitys);
        m.createAll();
      });
}
