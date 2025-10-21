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
  AnimeReleases? toModel() {
    if (nameJson == null || posterJson == null || publishDayJson == null) {
      return null;
    }

    try {
      return AnimeReleases(
        id: id,
        name: Name.fromJson(jsonDecode(nameJson!) as Map<String, dynamic>),
        poster: Poster.fromJson(
          jsonDecode(posterJson!) as Map<String, dynamic>,
        ),
        freshAt: freshAt,
        createdAt: createdAt,
        updatedAt: updatedAt,
        isOngoing: isOngoing,
        publishDay: PublishDay.fromJson(
          jsonDecode(publishDayJson!) as Map<String, dynamic>,
        ),
        description: description,
      );
    } catch (e) {
      return null;
    }
  }
}

extension AnimeReleasesX on AnimeReleases {
  AnimeReleasesTableCompanion toCompanion() {
    return AnimeReleasesTableCompanion(
      id: id != null ? Value(id!) : const Value.absent(),
      freshAt: Value(freshAt),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      isOngoing: Value(isOngoing),
      description: Value(description),
      nameJson: name != null
          ? Value(jsonEncode(name!.toJson()))
          : const Value(null),
      posterJson: poster != null
          ? Value(jsonEncode(poster!.toJson()))
          : const Value(null),
      publishDayJson: publishDay != null
          ? Value(jsonEncode(publishDay!.toJson()))
          : const Value(null),
    );
  }
}
