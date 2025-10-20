import 'package:animebox/core/utils/database/tables/anime_releases_table.dart';
import 'package:drift/drift.dart';
import "package:drift/src/runtime/data_class.dart";
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'package:animebox/core/network/api/api.dart';
import 'package:animebox/core/utils/database/drift.dart';
import 'package:animebox/features/search/data/models/search_anime_model.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({
    required this.apiClient,
    required this.baseUrl,
    required this.database,
  }) : super(SearchLoaded()) {
    on<SearchAnimeReleases>((event, emit) async {
      emit((state as SearchLoaded).copyWith(isLoading: true));

      try {
        final cached = await database.select(database.animeReleasesTable).get();
        if (cached.isNotEmpty) {
          searchLoadedReleasesSuccess(
            emit: emit,
            animeReleases: cached.map((anime) => anime.toModel()).toList(),
            isFromCache: true,
          );
        }

        final animeReleases = await apiClient.getAnimeReleases(event.limit);
        final companions = animeReleases
            .map((anime) => anime.toCompanion())
            .toList();
        await database.batch((batch) {
          batch.insertAllOnConflictUpdate(
            database.animeReleasesTable,
            companions,
          );
        });
        searchLoadedReleasesSuccess(
          emit: emit,
          animeReleases: animeReleases,
          isFromCache: false,
        );
      } catch (e, s) {
        emitError(emit, e, s);
      }
    });

    on<SearchAnimeReleasesBySearch>((event, emit) async {
      emit((state as SearchLoaded).copyWith(isLoading: true));

      try {
        final animeReleasesBySearch = await apiClient.getAnimeReleasesBySearch(
          event.query,
        );
        emit(
          (state as SearchLoaded).copyWith(
            animeReleasesBySearch: animeReleasesBySearch,
            isLoading: false,
          ),
        );
      } catch (e, s) {
        emitError(emit, e, s);
      }
    });

    on<RecommendedAnimeReleases>((event, emit) async {
      emit((state as SearchLoaded).copyWith(isLoading: true));

      try {
        final recommendedAnimeReleases = await apiClient
            .getRecommendedAnimeReleases(event.limit);
        emit(
          (state as SearchLoaded).copyWith(
            recommendedAnimeReleases: recommendedAnimeReleases,
            isLoading: false,
          ),
        );
      } catch (e, s) {
        emitError(emit, e, s);
      }
    });
  }

  void emitError(Emitter<SearchState> emit, Object e, StackTrace s) => emit(
    (state as SearchLoaded).copyWith(isLoading: false, error: e, stack: s),
  );

  void searchLoadedReleasesSuccess({
    required Emitter<SearchState> emit,
    required List<AnimeReleases> animeReleases,
    required bool isFromCache,
  }) {
    return emit(
      (state as SearchLoaded).copyWith(
        animeReleases: animeReleases,
        isLoading: false,
        isFromCache: isFromCache,
      ),
    );
  }

  void searchLoadedSearchReleasesSuccess({
    required Emitter<SearchState> emit,
    required List<AnimeReleases> animeReleasesBySearch,
    required bool isFromCache,
  }) {
    return emit(
      (state as SearchLoaded).copyWith(
        animeReleasesBySearch: animeReleasesBySearch,
        isLoading: false,
        isFromCache: isFromCache,
      ),
    );
  }

  final AnimeApiClient apiClient;
  final String baseUrl;
  final AniDatabase database;
}
