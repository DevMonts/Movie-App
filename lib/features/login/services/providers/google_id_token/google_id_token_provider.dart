import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:movie_app/features/login/services/google_id_token/google_id_token_service.dart';
import 'package:movie_app/features/login/services/google_id_token/google_id_token_service_implements.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'google_id_token_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
GoogleIdTokenService googleIdTokenService(
  Ref ref,
) {
  return GoogleIdTokenServiceImplements(
    FlutterSecureStorage(),
  );
}
