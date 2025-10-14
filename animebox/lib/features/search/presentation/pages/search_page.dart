import 'package:animebox/core/errors/sliver_error_message.dart';
import 'package:animebox/core/widgets/index.dart';
import 'package:animebox/features/search/presentation/bloc/search_bloc.dart';
import 'package:animebox/features/search/presentation/widgets/cards_title.dart';
import 'package:animebox/features/search/presentation/widgets/index.dart';
import 'package:animebox/shared/widgets/index.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _animeBySearchController = TextEditingController();

  @override
  void initState() {
    BlocProvider.of<SearchBloc>(context).add(SearchAnimeReleases(limit: 10));
    BlocProvider.of<SearchBloc>(
      context,
    ).add(RecommendedAnimeReleases(limit: 10));
    _animeBySearchController.addListener(_onQueryChanged);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SimpleAppBar(
          title: 'АниБокс',
          child: SearchButton(
            onTap: () {
              _showSearchBottomSheet(context);
            },
          ),
        ),
        BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            final loadedState = state as SearchLoaded;

            if (loadedState.error != null) {
              return SliverErrorMessage(error: loadedState.error.toString());
            }

            if (loadedState.isLoading &&
                loadedState.recommendedAnimeReleases.isEmpty) {
              return SliverFillRemaining(child: Center());
            }

            final anime = loadedState.recommendedAnimeReleases;
            return SliverToBoxAdapter(
              child: Column(
                children: [
                  CardsTitle(title: 'Рекомендации'),
                  AnimeListHorizontal(anime: anime),
                ],
              ),
            );
          },
        ),
        SliverToBoxAdapter(child: CardsTitle(title: 'Новые релизы')),

        BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            final loadedState = state as SearchLoaded;

            if (loadedState.error != null) {
              return SliverErrorMessage(error: loadedState.error.toString());
            }

            if (loadedState.isLoading && loadedState.animeReleases.isEmpty) {
              return SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()),
              );
            }

            final anime = loadedState.animeReleases;
            return SliverGridCardsContainer(
              children: anime
                  .map((animeItem) => AnimeCard(anime: animeItem))
                  .toList(),
            );
          },
        ),
      ],
    );
  }

  Future<dynamic> _showSearchBottomSheet(BuildContext context) {
    final theme = Theme.of(context);

    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      context: context,
      builder: (context) => DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.85,
        minChildSize: 0.2,
        maxChildSize: 0.95,
        builder: (context, scrollController) => Container(
          decoration: BoxDecoration(color: theme.canvasColor),
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SimpleAppBar(
                title: '',
                toolbarHeight: 0,
                child: SearchTextField(controller: _animeBySearchController),
              ),
              BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  final loadedState = state as SearchLoaded;

                  if (loadedState.error != null) {
                    return SliverErrorMessage(
                      error: loadedState.error.toString(),
                    );
                  }

                  if (loadedState.isLoading &&
                      loadedState.animeReleasesBySearch.isEmpty) {
                    return SliverFillRemaining(
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }

                  final animeBySearch = state.animeReleasesBySearch;
                  if (animeBySearch.isEmpty) {
                    return SliverToBoxAdapter(
                      child: Center(
                        child: Text(
                          'Введите запрос',
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    );
                  }
                  return SliverGridCardsContainer(
                    children: animeBySearch
                        .map((anime) => AnimeCard(anime: anime))
                        .toList(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onQueryChanged() {
    final query = _animeBySearchController.text;
    if (query.length > 2) {
      context.read<SearchBloc>().add(SearchAnimeReleasesBySearch(query: query));
    }
  }
}
