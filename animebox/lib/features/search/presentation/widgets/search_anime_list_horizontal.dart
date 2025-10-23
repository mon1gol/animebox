import 'package:animebox/features/anime_card/presentation/pages/anime_card_page.dart';
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
      height: 280, // увеличил, чтобы поместилсяx текст
      child: ListView.builder(
        itemCount: anime.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final imageUrl = anime[index].poster?.fullSrc(baseUrl);
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // 🔸 Карточка
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (context) => AnimeCardPage(),
                      settings: RouteSettings(arguments: anime[index]),
                    ),
                  );
                },
                child: BaseCardContainer(
                  height: 200,
                  width: 160,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  backgroundImageUrl: imageUrl,
                  child: const SizedBox(), // или оставьте пустым
                ),
              ),
              // 🔸 Текст снаружи
              SizedBox(
                width: 160,
                child: Text(
                  anime[index].name?.main ?? "АниБокс",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleSmall,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
