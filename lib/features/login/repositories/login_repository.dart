import 'package:movie_app/core/result/result.dart';

abstract interface class LoginRepository {
  Future<Result<void>> login();
  Future<Result<bool>> isLogged();
  Future<Result<void>> logoff();
}
