import 'package:animebox/core/utils/database/tables/anime_releases_search.dart';
import 'package:animebox/core/utils/database/tables/anime_releases_table.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'drift.g.dart';

@DriftDatabase(
  tables: [
    AnimeReleasesTable,
    AnimeReleasesSearchTable,
  ],
)
class AniDatabase extends _$AniDatabase {
  // After generating code, this class needs to define a `schemaVersion` getter
  // and a constructor telling drift where the database should be stored.
  // These are described in the getting started guide: https://drift.simonbinder.eu/getting-started/#open
  AniDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 2;

  static QueryExecutor _openConnection() {
    // `driftDatabase` from `package:drift_flutter` stores the database in
    // `getApplicationDocumentsDirectory()`.
    return driftDatabase(name: 'anibox_general.db');
  }
}
