import 'dart:convert';

import 'package:animebox/core/utils/database/drift.dart';
import 'package:animebox/features/search/data/models/search_anime_model.dart';
import 'package:drift/drift.dart';

class AnimeReleasesTable extends Table {
  @override
  Set<Column> get primaryKey => {id};

  IntColumn get id => integer()();
  TextColumn get freshAt => text().nullable()();
  TextColumn get createdAt => text().nullable()();
  TextColumn get updatedAt => text().nullable()();
  BoolColumn get isOngoing => boolean().nullable()();
  TextColumn get description => text().nullable()();
  TextColumn get nameJson => text().nullable()();
  TextColumn get posterJson => text().nullable()();
  TextColumn get publishDayJson => text().nullable()();
}

extension AnimeReleasesTableX on AnimeReleasesTableData {
  AnimeReleases toModel() {
    return AnimeReleases(
      id: id,
      name: Name.fromJson(jsonDecode(nameJson!)),
      poster: Poster.fromJson(jsonDecode(posterJson!)),
      freshAt: freshAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      isOngoing: isOngoing,
      publishDay: PublishDay.fromJson(jsonDecode(publishDayJson!)),
      description: description,
    );
  }
}

extension AnimeReleasesX on AnimeReleases {
  AnimeReleasesTableCompanion toCompanion() {
    return AnimeReleasesTableCompanion(
      id: Value(id!),
      freshAt: Value(freshAt),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      isOngoing: Value(isOngoing),
      description: Value(description),
      nameJson: Value(name != null ? jsonEncode(name!.toJson()) : null),
      posterJson: Value(poster != null ? jsonEncode(poster!.toJson()) : null),
      publishDayJson: Value(
        publishDay != null ? jsonEncode(publishDay!.toJson()) : null,
      ),
    );
  }
}
