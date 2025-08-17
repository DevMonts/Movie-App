import 'package:dio/dio.dart';
import 'package:movie_app/core/config/env.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'movies_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
Dio moviesProvider(
  Ref ref,
) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
    ),
  );
  dio.options.headers['Content-Type'] = 'application/json';
  dio.options.headers['Authorization'] = 'Bearer ${Env.theMovieDbApiKey}';
  dio.interceptors.addAll(
    [
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ),
    ],
  );
  return dio;
}
