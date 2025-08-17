import 'package:movie_app/core/result/result.dart';

abstract interface class GoogleLoginService {
  Future<Result<String>> login();
  Future<Result<String>> isLogged();
  Future<Result<void>> logoff();
}
