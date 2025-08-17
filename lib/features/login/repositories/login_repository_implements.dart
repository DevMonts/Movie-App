import 'dart:developer';
import 'package:movie_app/common/constants/app_strings.dart';
import 'package:movie_app/core/result/failure.dart';
import 'package:movie_app/core/result/result.dart';
import 'package:movie_app/core/result/success.dart';
import 'package:movie_app/features/login/repositories/login_repository.dart';
import 'package:movie_app/features/login/services/google_id_token/google_id_token_service.dart';
import 'package:movie_app/features/login/services/google_login/google_login_service.dart';

class LoginRepositoryImplements implements LoginRepository {
  final GoogleIdTokenService googleIdTokenService;
  final GoogleLoginService googleLoginService;

  LoginRepositoryImplements(
    this.googleIdTokenService,
    this.googleLoginService,
  );

  @override
  Future<Result<void>> login() async {
    final result = await googleLoginService.login();
    switch (result) {
      case Success<String>():
        await googleIdTokenService.saveGoogleIdToken(result.successResult);
        return Success(
          null,
        );
      case Failure<String>():
        log(
          AppStrings.loginError,
        );
        return Failure(
          result.exception,
        );
      default:
        return Failure(
          Exception(
            AppStrings.loginError,
          ),
        );
    }
  }

  @override
  Future<Result<bool>> isLogged() async {
    final result = await googleIdTokenService.getGoogleIdToken();
    return switch (result) {
      Success<String>() => Success(
        true,
      ),
      Failure<String>() => Success(
        false,
      ),
      _ => Failure(
        Exception(
          AppStrings.loginError,
        ),
      ),
    };
  }

  @override
  Future<Result<void>> logoff() async {
    final result = await googleLoginService.logoff();
    switch (result) {
      case Success<String>():
        final clean = await googleIdTokenService.removeGoogleIdToken();
        switch (clean) {
          case Success<bool>():
            return Success(
              null,
            );
          case Failure<bool>():
            return Failure(
              clean.exception,
            );
          default:
            return Failure(
              Exception(
                AppStrings.loginError,
              ),
            );
        }
      case Failure<String>():
        return Failure(
          result.exception,
        );
      default:
        return Failure(
          Exception(
            AppStrings.loginError,
          ),
        );
    }
  }
}
