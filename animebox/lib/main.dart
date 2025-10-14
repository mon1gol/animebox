import 'package:animebox/core/network/api/api.dart';
import 'package:animebox/core/utils/routes.dart';
import 'package:animebox/core/utils/theme.dart';
import 'package:animebox/features/search/presentation/bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  runApp(AniBoxApp());
}

class AniBoxApp extends StatefulWidget {
  const AniBoxApp({super.key});

  @override
  State<AniBoxApp> createState() => _AniBoxAppState();
}

class _AniBoxAppState extends State<AniBoxApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(
        apiClient: AnimeApiClient.create(apiUrl: dotenv.env['API_URL']),
        baseUrl: dotenv.env['API_URL_BASE']!,
      ),
      child: MaterialApp.router(
        title: 'АниБокс',
        theme: darkTheme,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
