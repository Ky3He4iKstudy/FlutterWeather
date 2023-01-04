// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class LocationEntity extends DataClass implements Insertable<LocationEntity> {
  final int id;
  final String cityName;
  final String loc;
  LocationEntity({required this.id, required this.cityName, required this.loc});
  factory LocationEntity.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return LocationEntity(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      cityName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}city_name'])!,
      loc: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}loc'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['city_name'] = Variable<String>(cityName);
    map['loc'] = Variable<String>(loc);
    return map;
  }

  LocationEntitysCompanion toCompanion(bool nullToAbsent) {
    return LocationEntitysCompanion(
      id: Value(id),
      cityName: Value(cityName),
      loc: Value(loc),
    );
  }

  factory LocationEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocationEntity(
      id: serializer.fromJson<int>(json['id']),
      cityName: serializer.fromJson<String>(json['cityName']),
      loc: serializer.fromJson<String>(json['loc']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'cityName': serializer.toJson<String>(cityName),
      'loc': serializer.toJson<String>(loc),
    };
  }

  LocationEntity copyWith({int? id, String? cityName, String? loc}) =>
      LocationEntity(
        id: id ?? this.id,
        cityName: cityName ?? this.cityName,
        loc: loc ?? this.loc,
      );
  @override
  String toString() {
    return (StringBuffer('LocationEntity(')
          ..write('id: $id, ')
          ..write('cityName: $cityName, ')
          ..write('loc: $loc')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, cityName, loc);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocationEntity &&
          other.id == this.id &&
          other.cityName == this.cityName &&
          other.loc == this.loc);
}

class LocationEntitysCompanion extends UpdateCompanion<LocationEntity> {
  final Value<int> id;
  final Value<String> cityName;
  final Value<String> loc;
  const LocationEntitysCompanion({
    this.id = const Value.absent(),
    this.cityName = const Value.absent(),
    this.loc = const Value.absent(),
  });
  LocationEntitysCompanion.insert({
    this.id = const Value.absent(),
    required String cityName,
    required String loc,
  })  : cityName = Value(cityName),
        loc = Value(loc);
  static Insertable<LocationEntity> custom({
    Expression<int>? id,
    Expression<String>? cityName,
    Expression<String>? loc,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (cityName != null) 'city_name': cityName,
      if (loc != null) 'loc': loc,
    });
  }

  LocationEntitysCompanion copyWith(
      {Value<int>? id, Value<String>? cityName, Value<String>? loc}) {
    return LocationEntitysCompanion(
      id: id ?? this.id,
      cityName: cityName ?? this.cityName,
      loc: loc ?? this.loc,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (cityName.present) {
      map['city_name'] = Variable<String>(cityName.value);
    }
    if (loc.present) {
      map['loc'] = Variable<String>(loc.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocationEntitysCompanion(')
          ..write('id: $id, ')
          ..write('cityName: $cityName, ')
          ..write('loc: $loc')
          ..write(')'))
        .toString();
  }
}

class $LocationEntitysTable extends LocationEntitys
    with TableInfo<$LocationEntitysTable, LocationEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocationEntitysTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _cityNameMeta = const VerificationMeta('cityName');
  @override
  late final GeneratedColumn<String?> cityName = GeneratedColumn<String?>(
      'city_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _locMeta = const VerificationMeta('loc');
  @override
  late final GeneratedColumn<String?> loc = GeneratedColumn<String?>(
      'loc', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, cityName, loc];
  @override
  String get aliasedName => _alias ?? 'location_entitys';
  @override
  String get actualTableName => 'location_entitys';
  @override
  VerificationContext validateIntegrity(Insertable<LocationEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('city_name')) {
      context.handle(_cityNameMeta,
          cityName.isAcceptableOrUnknown(data['city_name']!, _cityNameMeta));
    } else if (isInserting) {
      context.missing(_cityNameMeta);
    }
    if (data.containsKey('loc')) {
      context.handle(
          _locMeta, loc.isAcceptableOrUnknown(data['loc']!, _locMeta));
    } else if (isInserting) {
      context.missing(_locMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocationEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    return LocationEntity.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $LocationEntitysTable createAlias(String alias) {
    return $LocationEntitysTable(attachedDatabase, alias);
  }
}

abstract class _$LocationDB extends GeneratedDatabase {
  _$LocationDB(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $LocationEntitysTable locationEntitys =
      $LocationEntitysTable(this);
  late final LocationDao locationDao = LocationDao(this as LocationDB);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [locationEntitys];
}
