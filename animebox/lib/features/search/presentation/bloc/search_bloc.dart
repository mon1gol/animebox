import 'package:animebox/core/network/api/api.dart';
import 'package:animebox/features/search/data/models/search_anime_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({required this.apiClient, required this.baseUrl})
    : super(SearchLoaded()) {
    on<SearchAnimeReleases>((event, emit) async {
      emit((state as SearchLoaded).copyWith(isLoading: true));

      try {
        final animeReleases = await apiClient.getAnimeReleases(event.limit);
        emit(
          (state as SearchLoaded).copyWith(
            animeReleases: animeReleases,
            isLoading: false,
          ),
        );
      } catch (e, s) {
        emit((state as SearchLoaded).copyWith(isLoading: false, error: s));
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
      } catch (e) {
        emit((state as SearchLoaded).copyWith(isLoading: false, error: e));
      }
    });
  }

  final AnimeApiClient apiClient;
  final String baseUrl;
}
