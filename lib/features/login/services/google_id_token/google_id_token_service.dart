import 'package:movie_app/core/result/result.dart';

abstract interface class GoogleIdTokenService {
  Future<Result<void>> saveGoogleIdToken(String googleIdToken);
  Future<Result<String>> getGoogleIdToken();
  Future<Result<void>> removeGoogleIdToken();
}
