import 'package:movie_app/features/login/repositories/login_repository.dart';
import 'package:movie_app/features/login/repositories/login_repository_implements.dart';
import 'package:movie_app/features/login/services/providers/google_id_token/google_id_token_provider.dart';
import 'package:movie_app/features/login/services/providers/google_login/google_login_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'login_repository_providers.g.dart';

@riverpod
LoginRepository loginRepository(Ref ref) {
  return LoginRepositoryImplements(
    ref.watch(googleIdTokenServiceProvider),
    ref.watch(googleLoginServiceProvider),
  );
}
