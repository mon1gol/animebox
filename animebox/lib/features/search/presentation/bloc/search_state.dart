part of 'search_bloc.dart';

@immutable
sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object?> get props => [];
}

final class SearchLoaded extends SearchState {
  const SearchLoaded({
    this.animeReleases = const [],
    this.animeReleasesBySearch = const [],
    this.recommendedAnimeReleases = const [],
    this.isLoading = false,
    this.isFromCache = false,
    this.error,
    this.stack,
  });

  final List<AnimeReleases> animeReleases;
  final List<AnimeReleases> animeReleasesBySearch;
  final List<AnimeReleases> recommendedAnimeReleases;
  final bool isLoading;
  final bool isFromCache;
  final Object? error;
  final Object? stack;

  @override
  List<Object?> get props => [
    animeReleases,
    animeReleasesBySearch,
    recommendedAnimeReleases,
    isLoading,
    isFromCache,
    error,
    stack,
  ];

  SearchLoaded copyWith({
    List<AnimeReleases>? animeReleases,
    List<AnimeReleases>? animeReleasesBySearch,
    List<AnimeReleases>? recommendedAnimeReleases,
    bool? isLoading,
    bool? isFromCache,
    Object? error,
    Object? stack,
  }) {
    return SearchLoaded(
      animeReleases: animeReleases ?? this.animeReleases,
      animeReleasesBySearch:
          animeReleasesBySearch ?? this.animeReleasesBySearch,
      recommendedAnimeReleases:
          recommendedAnimeReleases ?? this.recommendedAnimeReleases,
      isLoading: isLoading ?? this.isLoading,
      isFromCache: isFromCache ?? this.isFromCache,
      error: error ?? this.error,
      stack: stack ?? this.stack,
    );
  }
}
