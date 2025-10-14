import 'package:animebox/features/search/data/models/search_anime_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi()
abstract class AnimeApiClient {
  factory AnimeApiClient(Dio dio, {String? baseUrl}) = _AnimeApiClient;

  factory AnimeApiClient.create({String? apiUrl}) {
    final dio = Dio();
    if (apiUrl != null) {
      return AnimeApiClient(dio, baseUrl: apiUrl);
    }
    return AnimeApiClient(dio);
  }

  @GET('/anime/releases/latest')
  Future<List<AnimeReleases>> getAnimeReleases(@Query('limit') int? limit);

  @GET('/app/search/releases')
  Future<List<AnimeReleases>> getAnimeReleasesBySearch(@Query('query') String? query);

  @GET('/anime/releases/recommended')
  Future<List<AnimeReleases>> getRecommendedAnimeReleases(@Query('limit') int? limit);
}
