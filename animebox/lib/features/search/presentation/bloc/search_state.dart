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
    this.isLoading = false,
    this.error,
  });

  final List<AnimeReleases> animeReleases;
  final List<AnimeReleases> animeReleasesBySearch;
  final bool isLoading;
  final Object? error;

  @override
  List<Object?> get props => [
    animeReleases,
    animeReleasesBySearch,
    isLoading,
    error,
  ];

  SearchLoaded copyWith({
    List<AnimeReleases>? animeReleases,
    List<AnimeReleases>? animeReleasesBySearch,
    bool? isLoading,
    Object? error,
  }) {
    return SearchLoaded(
      animeReleases: animeReleases ?? this.animeReleases,
      animeReleasesBySearch:
          animeReleasesBySearch ?? this.animeReleasesBySearch,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}
