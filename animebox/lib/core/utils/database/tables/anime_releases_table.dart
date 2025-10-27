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
        fresh_at: freshAt,
        created_at: createdAt,
        updated_at: updatedAt,
        is_ongoing: isOngoing,
        publish_day: PublishDay.fromJson(
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
      freshAt: Value(fresh_at),
      createdAt: Value(created_at),
      updatedAt: Value(updated_at),
      isOngoing: Value(is_ongoing),
      description: Value(description),
      nameJson: name != null
          ? Value(jsonEncode(name!.toJson()))
          : const Value(null),
      posterJson: poster != null
          ? Value(jsonEncode(poster!.toJson()))
          : const Value(null),
      publishDayJson: publish_day != null
          ? Value(jsonEncode(publish_day!.toJson()))
          : const Value(null),
    );
  }
}
