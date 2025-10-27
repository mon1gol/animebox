import 'package:animebox/features/search/data/models/search_anime_model.dart';
import 'package:animebox/features/search/presentation/bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimeCardPage extends StatelessWidget {
  const AnimeCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as AnimeReleases;
    final theme = Theme.of(context);
    final String baseUrl = context.read<SearchBloc>().baseUrl;
    final fullImageUrl = args.poster?.fullSrc(baseUrl);
    final isOngoing = args.is_ongoing;

    return Container(
      padding: EdgeInsets.all(8).copyWith(top: 100),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: fullImageUrl != null
                    ? DecorationImage(
                        image: NetworkImage(fullImageUrl),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
            ),
            SizedBox(height: 40),
            Text(
              args.name?.main ?? '',
              style: theme.textTheme.titleLarge,
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                isOngoing != null
                    ? Icon(
                        Icons.circle,
                        color: isOngoing ? Colors.amber : Colors.lightGreen,
                      )
                    : Text(''),
                SizedBox(width: 5),
                isOngoing != null
                    ? Text(
                        isOngoing ? 'Онгоинг' : "Завершено",
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: Colors.grey,
                        ),
                      )
                    : Text(''),
              ],
            ),
            SizedBox(height: 20),
            Text(args.description ?? '', style: theme.textTheme.bodyLarge),
            SizedBox(height: 40),
            Container(
              height: 1,
              decoration: BoxDecoration(color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'Дата выхода: ${args.created_at?.substring(0, 4)} год',
              style: theme.textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
