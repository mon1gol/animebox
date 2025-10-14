import 'package:animebox/features/search/data/models/search_anime_model.dart';
import 'package:animebox/features/search/presentation/bloc/search_bloc.dart';
import 'package:animebox/shared/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimeListHorizontal extends StatelessWidget {
  const AnimeListHorizontal({super.key, required this.anime});

  final List<AnimeReleases> anime;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final String baseUrl = context.read<SearchBloc>().baseUrl;

    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: anime.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final imageUrl = anime[index].poster?.fullSrc(baseUrl);
          return BaseCardContainer(
            backgroundImageUrl: imageUrl,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            width: 250,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                anime[index].name?.main ?? "АниБокс",
                style: theme.textTheme.titleMedium,
              ),
            ),
          );
        },
      ),
    );
  }
}
