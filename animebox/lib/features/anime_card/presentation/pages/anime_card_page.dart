import 'package:animebox/features/search/data/models/search_anime_model.dart';
import 'package:flutter/material.dart';

class AnimeCardPage extends StatelessWidget {
  const AnimeCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as AnimeReleases;
    final theme = Theme.of(context);

    return Container(
      height: 100,
      padding: EdgeInsets.all(8).copyWith(top: 100),
      child: Column(
        children: [
          Text(args.name?.main ?? '', style: theme.textTheme.titleLarge),
          SizedBox(height: 20),
          Text(args.description ?? '', style: theme.textTheme.bodyLarge),
        ],
      ),
    );
  }
}
