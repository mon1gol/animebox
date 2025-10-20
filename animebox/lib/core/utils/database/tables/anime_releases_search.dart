import 'package:drift/drift.dart';

class AnimeReleasesSearchTable extends Table {
  @override
  Set<Column> get primaryKey => {id};

  IntColumn get id => integer()();
  TextColumn get freshAt => text()();
  TextColumn get createdAt => text()();
  TextColumn get updatedAt => text()();
  BoolColumn get isOngoing => boolean()();
  TextColumn get description => text().nullable()();

  TextColumn get nameJson => text().nullable()();
  TextColumn get posterJson => text().nullable()();
  TextColumn get publishDayJson => text().nullable()();
}
