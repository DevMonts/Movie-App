import 'package:movie_app/features/login/services/google_login/google_login_service.dart';
import 'package:movie_app/features/login/services/google_login/google_login_service_implements.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'google_login_provider.g.dart'; 

// class LoginProvider extends ChangeNotifier {
//   final GoogleSignIn googleLogin = GoogleSignIn(
//     serverClientId: Env.googleApiKey,
//   );
//   GoogleSignInAccount? user;
//   String? idToken;
//   Future<void> login() async {
//     final account = await googleLogin.signIn();
//     final auth = await account?.authentication;
//     idToken = auth?.idToken;
//     user = account;
//     notifyListeners();
//   }
// }
@Riverpod(
  keepAlive: true,
)
GoogleLoginService googleLoginService(
  Ref ref,
) {
  return GoogleLoginServiceImplements();
}
