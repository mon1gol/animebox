part of 'search_bloc.dart';

@immutable
sealed class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class SearchAnimeReleases extends SearchEvent {
  const SearchAnimeReleases({required this.limit, this.completer});

  final int limit;
  final Completer<dynamic>? completer;

  @override
  List<Object> get props => [limit, ?completer];
}

class SearchAnimeReleasesBySearch extends SearchEvent {
  const SearchAnimeReleasesBySearch({required this.query});

  final String query;

  @override
  List<Object> get props => [query];
}

class RecommendedAnimeReleases extends SearchEvent {
  const RecommendedAnimeReleases({required this.limit});

  final int limit;

  @override
  List<Object> get props => [limit];
}
