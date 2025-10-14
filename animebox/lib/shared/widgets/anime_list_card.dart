import 'package:animebox/features/search/data/models/search_anime_model.dart';
import 'package:animebox/features/search/presentation/bloc/search_bloc.dart';
import 'package:animebox/shared/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Sliver сетка для расположения карточек
/// 
/// Для children использовать только список обычных виджетов, не sliver
class SliverGridCardsContainer extends StatelessWidget {
  const SliverGridCardsContainer({super.key, required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      mainAxisSpacing: 16,
      childAspectRatio: 0.8,
      crossAxisCount: 2,
      children: children,
    );
  }
}

class AnimeCard extends StatefulWidget {
  const AnimeCard({super.key, this.anime});
  final AnimeReleases? anime;

  @override
  State<AnimeCard> createState() => _AnimeCardState();
}

class _AnimeCardState extends State<AnimeCard> {
  String _statusValue = '';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final animeRelease = widget.anime;
    final String baseUrl = context.read<SearchBloc>().baseUrl;
    final fullImageUrl = animeRelease!.poster?.fullSrc(baseUrl);

    final Map<String, Color> statusMap = {
      'Смотрю': Colors.grey,
      'Просмотрено': Colors.green,
      'Отложено': Colors.yellow,
      'Брошено': Colors.red,
      'Запланировано': Colors.blue,
    };

    return BaseCardContainer(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 12),
      backgroundImageUrl: fullImageUrl,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.circle,
                    size: 16,
                    color: statusMap[_statusValue] ?? Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: PopupMenuButton(
                  onSelected: (value) => changeStatusValue(value),
                  icon: Icon(Icons.more_horiz),
                  itemBuilder: (context) => statusMap.keys.map((status) {
                    return PopupMenuItem(
                      value: status,
                      child: Text(status),
                      onTap: () {},
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              overflow: TextOverflow.fade,
              maxLines: 3,
              animeRelease.name?.main ?? 'АниБокс',
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  void changeStatusValue(String value) {
    setState(() {
      _statusValue = value;
    });
  }
}
