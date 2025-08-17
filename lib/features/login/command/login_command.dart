import 'package:movie_app/common/constants/app_strings.dart';
import 'package:movie_app/core/result/failure.dart';
import 'package:movie_app/core/result/success.dart';
import 'package:movie_app/features/login/repositories/providers/login_repository_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'login_command.g.dart';

@riverpod
class LoginCommand extends _$LoginCommand {
  @override
  AsyncValue<void> build() => AsyncData(
    null,
  );
  Future<void> login() async {
    state = AsyncLoading();
    final loginRepository = ref.read(
      loginRepositoryProvider,
    );
    final result = await loginRepository.login();
    switch (result) {
      case Success<void>():
        state = AsyncData(
          null,
        );
      case Failure<void>():
        state = AsyncError(
          AppStrings.loginError,
          StackTrace.current,
        );
    }
  }
}
