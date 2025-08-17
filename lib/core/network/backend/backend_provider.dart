import 'package:dio/dio.dart';
import 'package:movie_app/core/config/env.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'backend_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
Dio backendProvider(
  Ref ref,
) {
  final dio = Dio(
    BaseOptions(
      baseUrl: Env.backendBaseUrl,
      connectTimeout: const Duration(
        seconds: 30,
      ),
      receiveTimeout: const Duration(
        seconds: 30,
      ),
    ),
  );
  dio.options.headers['Content-Type'] = 'application/json';
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
