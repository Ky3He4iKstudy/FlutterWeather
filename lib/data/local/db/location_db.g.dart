// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class LocationEntity extends DataClass implements Insertable<LocationEntity> {
  final String loc;
  LocationEntity({required this.loc});
  factory LocationEntity.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return LocationEntity(
      loc: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}loc'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['loc'] = Variable<String>(loc);
    return map;
  }

  LocationEntitysCompanion toCompanion(bool nullToAbsent) {
    return LocationEntitysCompanion(
      loc: Value(loc),
    );
  }

  factory LocationEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocationEntity(
      loc: serializer.fromJson<String>(json['loc']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'loc': serializer.toJson<String>(loc),
    };
  }

  LocationEntity copyWith({String? loc}) => LocationEntity(
        loc: loc ?? this.loc,
      );
  @override
  String toString() {
    return (StringBuffer('LocationEntity(')
          ..write('loc: $loc')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => loc.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocationEntity && other.loc == this.loc);
}

class LocationEntitysCompanion extends UpdateCompanion<LocationEntity> {
  final Value<String> loc;
  const LocationEntitysCompanion({
    this.loc = const Value.absent(),
  });
  LocationEntitysCompanion.insert({
    required String loc,
  }) : loc = Value(loc);
  static Insertable<LocationEntity> custom({
    Expression<String>? loc,
  }) {
    return RawValuesInsertable({
      if (loc != null) 'loc': loc,
    });
  }

  LocationEntitysCompanion copyWith({Value<String>? loc}) {
    return LocationEntitysCompanion(
      loc: loc ?? this.loc,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (loc.present) {
      map['loc'] = Variable<String>(loc.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocationEntitysCompanion(')
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
  final VerificationMeta _locMeta = const VerificationMeta('loc');
  @override
  late final GeneratedColumn<String?> loc = GeneratedColumn<String?>(
      'loc', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [loc];
  @override
  String get aliasedName => _alias ?? 'location_entitys';
  @override
  String get actualTableName => 'location_entitys';
  @override
  VerificationContext validateIntegrity(Insertable<LocationEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('loc')) {
      context.handle(
          _locMeta, loc.isAcceptableOrUnknown(data['loc']!, _locMeta));
    } else if (isInserting) {
      context.missing(_locMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
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
