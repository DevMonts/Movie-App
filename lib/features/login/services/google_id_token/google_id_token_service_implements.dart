import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:movie_app/common/constants/app_strings.dart';
import 'package:movie_app/core/result/failure.dart';
import 'package:movie_app/core/result/result.dart';
import 'package:movie_app/core/result/success.dart';
import 'package:movie_app/features/login/services/google_id_token/google_id_token_service.dart';

class GoogleIdTokenServiceImplements implements GoogleIdTokenService {
  final FlutterSecureStorage storage;
  GoogleIdTokenServiceImplements(this.storage);

  @override
  Future<Result<void>> saveGoogleIdToken(
    String idToken,
  ) async {
    await storage.write(
      key: 'id_token',
      value: 'token',
    );
    return Success(
      null,
    );
  }

  @override
  Future<Result<String>> getGoogleIdToken() async {
    final token = await storage.read(
      key: 'id_token',
    );
    if (token != null) {
      return Success(
        token,
      );
    }
    return Failure(
      Exception(
        AppStrings.tokenNotFound,
      ),
    );
  }

  @override
  Future<Result<void>> removeGoogleIdToken() async {
    await storage.delete(
      key: 'id_token',
    );
    return Success(
      null,
    );
  }
}
