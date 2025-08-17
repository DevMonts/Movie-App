import 'package:google_sign_in/google_sign_in.dart';
import 'package:movie_app/common/constants/app_strings.dart';
import 'package:movie_app/core/result/failure.dart';
import 'package:movie_app/core/result/result.dart';
import 'package:movie_app/core/result/success.dart';
import 'package:movie_app/features/login/services/google_login/google_login_service.dart';

class GoogleLoginServiceImplements implements GoogleLoginService {
  @override
  Future<Result<String>> login() async {
    final auth = await GoogleSignIn.instance.authenticate(
      scopeHint: [
        'email',
        'profile',
        'openid',
      ],
    );
    if (auth.authentication case GoogleSignInAuthentication(
      idToken: final idToken?,
    )) {
      return Success(
        idToken,
      );
    }
    return Failure(
      Exception(
        AppStrings.idTokenError,
      ),
    );
  }

  @override
  Future<Result<String>> isLogged() async {
    final logged = await GoogleSignIn.instance
        .attemptLightweightAuthentication();
    if (logged case GoogleSignInAccount(
      authentication: GoogleSignInAuthentication(idToken: final idToken?),
    )) {
      return Success(
        idToken,
      );
    } else {
      return Failure(
        Exception(
          AppStrings.idTokenError,
        ),
      );
    }
  }

  @override
  Future<Result<void>> logoff() async {
    try {
      await GoogleSignIn.instance.signOut();
      return Success(
        null,
      );
    } catch (e) {
      return Failure(
        Exception(
          AppStrings.logoffError,
        ),
      );
    }
  }
}
